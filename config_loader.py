import sys
from yaml import load, dump

try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper

import importlib.util
import sys
import enum
import os
from pathlib import Path


class ConfigType(enum.Enum):
    Tester = enum.auto()
    Engine = enum.auto()
    LPGBT = enum.auto()
    Criteria = enum.auto()

base_dir = Path(__file__).parent


cache = {}

def loadConfiguration(config_type):
    global cache
    engine_type = os.environ.get("ENGINE_TYPE", "LD")



    p = (engine_type, config_type)

    print(f"Loading configuration for {p}")

    if p in cache:
        return cache[p]

    if engine_type == "LD":
        name_mapping = {
            ConfigType.Tester: "configurations/ld_tester_config.yaml",
            ConfigType.Engine: "configurations/ld_engine_config.yaml",
            ConfigType.LPGBT: "configurations/lpgbt_config.yaml",
            ConfigType.Criteria: "configurations/engine_rubric.yaml"
        }
    elif engine_type == "HD":
        name_mapping = {
            ConfigType.Tester: "configurations/hd_tester_config.yaml",
            ConfigType.Engine: "configurations/hd_engine_config.yaml",
            ConfigType.LPGBT: "configurations/lpgbt_config.yaml",
            ConfigType.Criteria: "configurations/engine_rubric.yaml"
        }

    elif  engine_type == "HD_HALF":
        name_mapping = {
            ConfigType.Tester: "configurations/hdhalf_tester_config.yaml",
            ConfigType.Engine: "configurations/hdhalf_engine_config.yaml",
            ConfigType.LPGBT: "configurations/lpgbt_config.yaml",
            ConfigType.Criteria: "configurations/engine_rubric.yaml"
        }

    with open(base_dir / name_mapping[config_type], "r") as f:
        ret = load(f.read(), Loader=Loader)

    cache[(engine_type, config_type)] = ret

    return ret
