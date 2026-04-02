#!/usr/bin/python

from Test import Test
from iic import iic
import config_bits as cb
import engine_comm
from adc_calibrator import setup_calibration_database,majority_vote
import sqlite3
from pathlib import Path
import os
import sys
parent_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(parent_dir)


DB_PATH = (Path.home() / "lpgbt_calibration.db").absolute()

class Mod4LMezzComm(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Comm", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.lmezz_comm_test, self.info_dict, conn)

    def lmezz_comm_test(self, **kwargs):
        data={'tester_ok': True, 'mezz_ok': True}
        comments=''
        passed=True
        try:
            self.connection=iic(protocol="I2C", i2c_addr=0x20)
            self.connection.connect()
            self.my_pca_chip = PCA9575(self.connection)
            self.my_pca_chip.setPortsAsOutputs([(1,7)])
            self.my_pca_chip.setOutputValue((1,7), 1)
        except Exception as e:
            data['tester_ok'] = False
            comments=f"Failed to connect to Tester."
            passed=False
        finally:
            if hasattr(self, 'connection'):
                self.connection.close()

        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect()
            self.iic.write_lpgbt(0x01c,0,"LPGBT")
        except Exception as e:
            data['mezz_ok'] = False
            comments=f"Failed to write to LPGBT."
            passed=False
        finally:
            if hasattr(self, 'iic'):
                self.iic.close()

        return passed, data, comments


class Mod4LMezzId(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Id", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn

        self.fuse_read = cb.Field(cb.FieldPart(0x119, 1, 1), name="fuse_read")
        self.fuse_data_valid = cb.Field(cb.FieldPart(0x1B1, 1, 2), name="fuse_data_valid")
        self.fuse_address = cb.Field(
            cb.FieldPart(0x11E, 8, 0), cb.FieldPart(0x11F, 8, 0), name="fuse_address"
        )
        self.fuse_value = cb.Field(
            *[cb.FieldPart(0x1B2 + i, 8, 0) for i in range(3, -1, -1)], name="fuse_value"
        )

        self.chip_id = 0x000
        self.chip_id_replica_1 = 0x008
        self.chip_id_replica_2 = 0x00C
        self.chip_id_replica_3 = 0x010
        self.chip_id_replica_4 = 0x014

        self.setup_done = True
        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect()
            self.iic.write_lpgbt(0x140,0xA3,"LPGBT")
            self.iic.write_lpgbt(0x13f,0b10010011,"LPGBT")

            self.iic.write_lpgbt(0x053, 0xff, "LPGBT")
            self.iic.write_lpgbt(0x054, 0xff, "LPGBT")
            self.iic.write_lpgbt(0x055, 0, "LPGBT")
            self.iic.write_lpgbt(0x056, 0, "LPGBT")
        except Exception as e:
            self.setup_done=False

        Test.__init__(self, self.lmezz_id_test, self.info_dict, conn)

    def lmezz_id_test(self, **kwargs):
        def rr(v, shift):
            return (v >> shift) | ((v << (32 - shift)) & 0xFFFFFFFF)
        if not self.setup_done:
            return False, {}, "Failed to connect to I2C interface."
        try:
            results = {}
            passed = True
            rot_map = [0, 6, 12, 18, 24]
            comments = []
            all_ids = []
            cb.write(self.iic, {self.fuse_read: 1}, target="LPGBT")
            ready = False
            while not ready:
                ready = bool(cb.read(self.iic, [self.fuse_read], target="LPGBT")[self.fuse_read])
            for addr in [
                self.chip_id,
                self.chip_id_replica_1,
                self.chip_id_replica_2,
                self.chip_id_replica_3,
                self.chip_id_replica_4,
            ]:
                cb.write(self.iic, {self.fuse_address: addr}, target="LPGBT")
                read_id = cb.read(self.iic, [self.fuse_value], target="LPGBT")[self.fuse_value]
                all_ids.append(read_id)
            cb.write(self.iic, {self.fuse_read: 0}, target="LPGBT")
            all_ids = [rr(x, y) for x, y in zip(all_ids, rot_map)]

            for i in all_ids:
                print(f"{i:08x}")

            majority = majority_vote(all_ids)
            contested = majority["contested"]
            chosen = majority["majority"]
            results["LPGBT"] = {"id": chosen, "candidates": all_ids}

            setup_calibration_database()
            con = sqlite3.connect(DB_PATH)
            cur = con.cursor()
            chipdata = cur.execute(
                f"SELECT data from lpgbt WHERE CHIPID = '{chosen:08X}'"
            ).fetchone()
            con.close()
            if chipdata is None:
                comments.append(
                    f"Could not find lpgbt id 0x{chosen:08x} in the database"
                )
                passed = False
            #print(f"Passed: {passed}")
            if self.conn is not None:
                self.conn.send("Done.")
            return passed, results, "\n".join(comments)
        except Exception as e:
            return False, {}, f"Error during ID readout."

class Mod4Resistance(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Resistance", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_res_test, self.info_dict, conn)

    def mod4_res_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments

class Mod4Reset(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Reset", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_reset_test, self.info_dict, conn)

    def mod4_reset_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments
