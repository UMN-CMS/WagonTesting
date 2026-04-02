import logging
from collections import namedtuple, defaultdict
from collections.abc import Container
from typing import Union, Tuple, DefaultDict, Dict, Mapping, Collection
import time

# from dataclasses import dataclass


FieldPart = namedtuple("Part", "register size offset")
#logging.getLogger().setLevel(logging.DEBUG)
#handler = logging.StreamHandler()
#handler.setLevel(logging.DEBUG)
#logging.getLogger().addHandler(handler)


class Field:
    def __init__(
        self, *parts: Collection[Union[FieldPart, Tuple[int, int, int]]], name: str = ""
    ):
        self.parts = tuple(FieldPart._make(p) for p in list(parts))
        self.name = name

    def __hash__(self):
        return hash(self.parts)

    def __str__(self):
        return str(self.name)

    def __repr__(self):
        return str(self.name)

    @staticmethod
    def fromDict(d):
        return Field(*d["parts"], name=d["name"])


def produceRegisterValues(
    field: Field, value: int, logger: logging.Logger = None, **kwargs
) -> Mapping[int, int]:
    logger = logger or logging.getLogger()
    logger.debug(f"Preparing to write field {field.name}")
    total_size = sum(x.size for x in field.parts)
    if value.bit_length() > total_size:
        raise ValueError("Size of value exceeds total size of the field")
    logger.debug(f"Total size of value is {total_size}")
    consumed = 0
    logger.debug(f"Value to be written to field is {value:b}")
    ret = {}
    for reg, size, offset in reversed(field.parts):
        to_write = ((((2**size - 1) << consumed) & value) >> consumed) << offset
        logger.debug(f"Must set bits {to_write:08b} in register 0x{reg:X}")
        # iic.write_lpgbt(reg, to_write, **kwargs)
        ret[reg] = to_write
        consumed += size
    return ret


def getFieldMask(field: Field) -> Mapping[int, int]:
    ret: Dict[int, int] = {reg: 0 for reg, _, _ in field.parts}
    for reg, size, offset in reversed(field.parts):
        to_write = (2**size - 1) << offset
        ret[reg] |= to_write
    return ret


def invertFields(config: Mapping[int, int]) -> Mapping[int, int]:
    return {reg: (~val & 0xFF) for reg, val in config.items()}


def mergeConfigs(*args: Mapping[int, int]) -> Mapping[int, int]:
    ret: DefaultDict[int, int] = defaultdict(int)
    for bitmap in args:
        for reg, val in bitmap.items():
            ret[reg] |= val
    return dict(ret)


def read(iic, fields: Collection[Field], logger: logging.Logger = None, retries=3, **kwargs):
    logger = logger or logging.getLogger()
    need_to_read = [part.register for field in fields for part in field.parts]
    logger.debug("Merged to {}".format([f"{v:x}" for v in need_to_read]))
    # read_vals = {reg: iic.read_lpgbt(reg, **kwargs) for reg in need_to_read}
    ret = {}
    for field in fields:
        current_field_val, consumed = 0, 0
        for reg, size, offset in reversed(field.parts):
        
            for i in range(retries):
                try:
                    val = iic.read_lpgbt(reg, **kwargs)[0]
                    if i > 0:
                        print(f"Read register 0x{reg:0x} succesfully after {retries} attempts")
                    break
                except IndexError:
                    if i == retries - 1:
                        raise RuntimeError(f"Failed to read register 0x{reg:0x} after {i} tries.")
                    time.sleep(1)
                    print(f"Failed to read register 0x{reg:0x}, retrying")

            current_field_val |= ((val >> offset) & (2**size - 1)) << consumed
            logger.debug(f"Current constructed value is {current_field_val:b}")
            consumed += size
        ret[field] = current_field_val
    return ret


def readMany(
    iic, regs: Collection[int], logger: logging.Logger = None, retries=3, **kwargs
) -> Mapping[int, int]:
    logger = logger or logging.getLogger()
    ret = {}
    for reg in regs:
        ok = False
        for i in range(retries):
            logger.debug(kwargs)
            try:
                val = iic.read_lpgbt(reg, **kwargs)[0]
                ok=True
                if i > 0:
                    print(f"Read register 0x{reg:0x} succesfully after {retries} attempts")
                break
            except Exception:
                if i == retries - 1:
                    raise RuntimeError(f"Failed to read register 0x{reg:0x} after {i} tries.")
                time.sleep(0.5)
                print(f"Failed to read register 0x{reg:0x}, retrying")
        if not ok:
            raise RuntimeError(f"Failed to read register 0x{reg:0x}")
        ret[reg] = val
    return ret


def write(
    iic, config: Mapping[Field, int], logger: logging.Logger = None, **kwargs
) -> None:
    logger = logger or logging.getLogger()
    all_masks = [getFieldMask(x) for x in config]
    merged_masks = invertFields(mergeConfigs(*all_masks))

    logger.debug(
        "Mask is: {}".format({f"0x{k:x}": f"{v:08b}" for k, v in merged_masks.items()})
    )
    merged = mergeConfigs(*[produceRegisterValues(c, v) for c, v in config.items()])
    registers = list(merged)
    logger.debug(f'Now reading registers {[f"0x{r:X}" for r in registers]}')

    current = readMany(iic, registers, logger, **kwargs)
    logger.debug(
        "Current register configuration is {}".format(
            {f"0x{k:x}": f"{v:08b}" for k, v in current.items()}
        )
    )

    external_vals = {x: current[x] & merged_masks[x] for x in merged_masks}
    to_write = {x: merged[x] | external_vals[x] for x in merged}
    logger.debug(
        "Writing lpgbt {} configuration {}".format(
            kwargs.get("target", "unknown"),
            {f"0x{k:x}": f"{v:08b}" for k, v in to_write.items()},
        )
    )
    for reg, val in to_write.items():
        iic.write_lpgbt(reg, val, **kwargs)


class Faker:
    def __init__(self):
        self.fakemap = defaultdict(int)

    def write_lpgbt(self, reg, val):
        self.fakemap[reg] = val

    def read_lpgbt(self, reg):
        return [self.fakemap[reg]]
