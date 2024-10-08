#####################################################################
#                                                                   #
#  This code creates a server to be housed locally on the testing   #
#                              station.                             #
#                                                                   #
#####################################################################

# importing necessary modules
from asyncore import write
import time, zmq, json, logging, os, sys
from pathlib import Path

homedir = Path.home()

REPServerLogPath = f"{homedir}/logs/"

if not os.path.exists(REPServerLogPath):
    os.makedirs(REPServerLogPath)

logging.FileHandler(REPServerLogPath + "REPServer.log", mode='a')

FORMAT = '%(asctime)s|%(levelname)s|%(message)s|'
logging.basicConfig(filename=f"{REPServerLogPath}/REPServer.log", filemode='a', format=FORMAT, level=logging.DEBUG)

import multiprocessing as mp
#from tkinter import NONE
# Should contain imports for the test scripts

sys.path.append(str(Path(__file__).parent.parent.absolute()))

from PUBServer import PUBServer
from GenResTest import GenResTest
from IDResTest import IDResTest
from BitRateTest import BitRateTest
#from StressScript import StressScript
#from LCD_SUBClient import LCD_SUBClient

sys.path.append(str(Path(__file__).parent.absolute()))
from run_adc_self_test import ADC
from run_iic_check import IIC_Check 
from run_bert import BERT
from wagon_rtd import gen_resist_test, id_resist_test

#from SSD1803A import SSD1803A
from HwInterface.iic import iic


# Makes the REPServer a class
class REPServer():

    def __init__(self):

        logging.info("REPServer: Initializing REPServer")
        self.output = None
        
        # Creates a context class which contains the method to create a socket.
        cxt = zmq.Context()
        socket = cxt.socket(zmq.REP)


        # Server-side for talking to a network point. "Bind"   ## socket.connect() is only used for CLIENTS
        try:
            logging.debug("REPServer: Trying to bind the socket.")
            socket.bind("tcp://*:5555")
        except Exception as e:
            logging.debug(e)
            print("COULD NOT CREATE REP SERVER! Make sure all REPserver.py processes are killed before rerunning.")
            return 

        print("\n\n\tReply Server has started!\n\n")
        logging.info("Reply Server has started.")

        I2C_BUS = 5
        #LCD_ADDRESS = 0x3d

        myiic = iic()
        #myiic.connect(dev="/dev/i2c-{}".format(I2C_BUS), addr=LCD_ADDRESS)

        #self.lcd = SSD1803A(myiic, LCD_ADDRESS)

        try:
            logging.debug("REPServer: Beginning while loop to stay on forever.")
            # Sets up an infinite loop so the server is always on until a keyboard interrupt occurs
            while 1>0:

                #  Wait for next request from client
                # string = socket.recv_string().lower()
                logging.debug("Waiting for request...")
                self.desired_test, self.serial, self.tester = socket.recv_string().split(";")
                print(self.desired_test)
                logging.debug("Received request: %s " % self.desired_test)

                # Immediately sends a response to the GUI, begins the test and PUBServer, then resets the message variable.
                socket.send_string("Request receieved for a test. Starting test.")
                print("Beginning processes")
                self.begin_processes(self.desired_test)
                print("After beginning processes")
                self.desired_test = ''               
                                        
        # Keyboard interrupt with ZMQ has a bug when on BOTH Windows AND Python at the same time.
        # This code should allow for CTRL + C interrupt for the server on any non-windows system.
        except KeyboardInterrupt:
            logging.debug("Keyboard interrupt detected.")
            logging.info("Closing the server...")
            try:
                socket.close()
            except:
                logging.warning("Socket failed to close.")
            try:
                cxt.term()
            except:
                logging.warning("ZMQ Context object: 'cxt' failed to terminate.")

    # The target function for processs_test being created in begin_process
    def task_test(self, conn, desired_test):
        # Tests for what test is being requested and then starts the corresponding test.
        # If it is not one of the tests, this passes (maybe change that.)
        # Every test tasks "conn" which is for piping "logging.info" statements
        # from the tests to the publish server
        logging.debug("Testing the desired_test variable to see if it matches a test name.")

        test_info = {'board_sn': self.serial, 'tester': self.tester}
        
        if desired_test == 'test0':
            #self.lcd.set_stage()
            test1 = ADC(conn,**test_info) 
        elif desired_test == 'test1':
            test2 = gen_resist_test(conn, **test_info)
        elif desired_test == 'test2':
            test3 = id_resist_test(conn, **test_info)
        elif desired_test == 'test3':
            test_IIC = IIC_Check(conn, **test_info)
        elif desired_test == 'test4':
            test_BERT = BERT(conn, **test_info)
        elif desired_test == 'STRESS':
            test_STRESS = StressScript(conn, **test_info)
        else:
            conn.send("Invalid request. String does not match any test type.")
            logging.debug("Invalid request. Strings must match exactly.")

    # The target function for process_PUBServer being created in begin_process
    def task_PUBServer(self, conn):
        logging.debug("Initializing the pub server...")
        pub_server = PUBServer(conn)

    #def task_LCD(self):
    #    LCD_SUBClient(self.lcd)

    # Starts up the test and PUBServer as separate processes
    def begin_processes(self, desired_test):
        logging.debug("Starting processes")
        conn_test, conn_PUBServer = mp.Pipe()
        #self.lcd.loading_bar(int(desired_test[-1])+1,0)
        process_test = mp.Process(target = self.task_test, args=(conn_test, desired_test,))
        process_PUBServer = mp.Process(target = self.task_PUBServer, args=(conn_PUBServer,))
        #process_LCD = mp.Process(target = self.task_LCD)
        
        logging.debug("Launching the process_test process")
        process_test.start()
        logging.debug("Launching the process_PUBServer process")
        process_PUBServer.start()
        #process_LCD.start()

        # Prevents the code from continuing here until both processes have ended.
        logging.debug("Waiting until process_test is completed to continue")
        process_test.join()
        logging.debug("Waiting until process_PUBServer is completed to continue")
        process_PUBServer.join()
        logging.debug("Pub server joined")
        #process_LCD.join()

        logging.debug("Processes have ended.")

# Having an odd bug where it trys to instantiate the server twice, this prevents anything weird from happening
try:
    # Instantiates the server        
    REP_Server = REPServer()
except Exception as e:
    print(e)
    logging.debug("REPServer already instantiated")
