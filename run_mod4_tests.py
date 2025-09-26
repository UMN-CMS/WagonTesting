#!/usr/bin/python

from Test import Test

class Mod4LMezzComm(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Comm", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.lmezz_comm_test, self.info_dict, conn)

    def lmezz_comm_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        return passed, test_data, comments


class Mod4LMezzId(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Id", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.lmezz_id_test, self.info_dict, conn)

    def lmezz_id_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        return passed, test_data, comments

class Mod4Resistance(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Resistance", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_res_test, self.info_dict, conn)

    def mod4_res_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        return passed, test_data, comments
