#!/usr/bin/python3

'''
Utility class for running tests on wagon tester

This class assumes that your results dictionary stores only certain fields.
Make sure that you are syncronizing your return from the test function with that of the test class.
'''
import time
import json

class Test():
    
    def __init__(self, test_func, info_dict, conn, **kwargs):

        self.conn = conn

        time.sleep(1)

        self.conn.send("Initializing a test")

        # All information that should be provided from the GUI to every test
        try:
            self.name = info_dict['name']
            self.board_sn = info_dict['board_sn']
            self.tester = info_dict['tester']
        except:
            self.conn.send("Please provide the name of the test, board serial number, and tester name")

        # Info that will be provided from running the test
        try:
            self.passed, self.data = self.run_test(test_func, **kwargs)

            # Package up results into a dictionary for parsing into a JSON
            self.results = {'name': self.name, 'board_sn': self.board_sn, 'tester': self.tester, 'pass': self.passed, 'data': self.data}

            self.conn.send(self.dump_results())
            
            self.save_results()

            self.send_results()

        except:

            self.conn.send(f'Issue running test "{info_dict["name"]}". Try rerunning')
            self.conn.send("Exit.")

    # Dump results in JSON format for uploading to the database
    def dump_results(self):
        # This used to conn.send("Dumping Results.") but that was clogging the pipe for the results.
        return json.dumps(self.results)

    # Save JSON file under <serial_number>_<test_name>.json
    def save_results(self):
        self.conn.send("\nSaving results...\n")
        with open("/home/HGCAL_dev/sw/jsons/{0}/{0}_{1}.json".format(self.name.replace(" ",""), self.board_sn), "w") as f:
            f.write(self.dump_results())

        f.close()

    # Get results as a python dictionary
    def get_results(self):
        self.conn.send(self.results)
        return self.results

    # Send results via the PUB Server
    def send_results(self):
        print(type(self.dump_results()))
        self.conn.send(self.dump_results())

    # Function for running your test, kwargs must agree with defined kwargs for your test
    # This function assumes that the output of the test will be the pass/fail condition (bool)
    # and a dictionary (of any depth) containing the extra data to store for the test
    def run_test(self, test_func, **kwargs):
        self.conn.send("Running the test: run_test")
        return test_func(**kwargs)

