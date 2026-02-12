#!/usr/bin/python

from Test import Test


class Mod4LMezzComm(Test):
    def __init__(self, conn, board_sn=-1, tester=""):
        self.info_dict = {
            "name": "Mod4 LMezz Comm",
            "board_sn": board_sn,
            "tester": tester,
        }
        self.conn = conn
        Test.__init__(self, self.lmezz_comm_test, self.info_dict, conn)

    def lmezz_comm_test(self, **kwargs):
        """
        Verify communication over I2C between the Kria and the LMezz.
        Do several reads and writes like in https://gitlab.cern.ch/cms-hgcal-firmware/hgc-engine-tools/-/blob/engine-qc-prod/engine_tests/test_i2c.py?ref_type=heads
        to verify reliable connection.
        """
        passed = True
        test_data = {}
        comments = ""

        # Write test here, remember to update test_data with the relevant test data
        # and comments describing the reason for failure

        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments


class Mod4LMezzId(Test):
    def __init__(self, conn, board_sn=-1, tester=""):
        self.info_dict = {
            "name": "Mod4 LMezz Id",
            "board_sn": board_sn,
            "tester": tester,
        }
        self.conn = conn
        Test.__init__(self, self.lmezz_id_test, self.info_dict, conn)

    def lmezz_id_test(self, **kwargs):
        """
        Read the lpgbt id on the LMezz and verify that it is present in the lpgbt calibration database.
        See https://gitlab.cern.ch/cms-hgcal-firmware/hgc-engine-tools/-/blob/engine-qc-prod/engine_tests/test_startup.py?ref_type=heads#L83
        """
        passed = True
        test_data = {}
        comments = ""

        # Write test here, remember to update test_data with the relevant test data
        # and comments describing the reason for failure

        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments


class Mod4Resistance(Test):
    def __init__(self, conn, board_sn=-1, tester=""):
        self.info_dict = {
            "name": "Mod4 Resistance",
            "board_sn": board_sn,
            "tester": tester,
        }
        self.conn = conn
        Test.__init__(self, self.mod4_res_test, self.info_dict, conn)

    def mod4_res_test(self, **kwargs):
        """
        Test the ADC and GPIO lines for module 4.

        See
        4 Module Wagon: https://drive.google.com/drive/u/1/folders/18ZEan94Y-26NHmU3B6_Ce716EqKlfzaJ
        ADC Control: https://gitlab.cern.ch/cms-hgcal-firmware/hgc-engine-tools/-/blob/engine-qc-prod/engine_tests/test_adc.py?ref_type=heads
        GPIO Control: https://gitlab.cern.ch/cms-hgcal-firmware/hgc-engine-tools/-/blob/engine-qc-prod/engine_tests/test_gpio.py?ref_type=heads
        Tester: https://drive.google.com/drive/u/1/folders/1JWhkA4RRRJb53mTku8pAx-MgUf0mNpV_
        Adapter: https://drive.google.com/drive/u/1/folders/1JWhkA4RRRJb53mTku8pAx-MgUf0mNpV_
        """

        passed = True
        test_data = {}
        comments = ""

        # Write test here, remember to update test_data with the relevant test data
        # and comments describing the reason for failure

        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments
