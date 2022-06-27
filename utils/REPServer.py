#####################################################################
#                                                                   #
#  This code creates a server to be housed locally on the testing   #
#       station (at the moment this would be the raspberry pi)      #
#                                                                   #
#####################################################################

# importing necessary modules
from asyncore import write
import time, zmq, json
import multiprocessing as mp
from tkinter import NONE
# Should contain imports for the test scripts
from GenResTest import GenResTest
from PUBServer import PUBServer
from IDResTest import IDResTest
from I2CConnTest import I2CConnTest
from BitRateTest import BitRateTest

# Makes the REPServer a class
class REPServer():

    def __init__(self):
        self.output = None
        
        # Creates a context class which contains the method to create a socket.
        cxt = zmq.Context()
        socket = cxt.socket(zmq.REP)

        # Server-side for talking to a network point. "Bind"   ## socket.connect() is only used for CLIENTS
        socket.bind("tcp://*:5555")

        print ("Reply Server has started.")
        time.sleep(1)


        try:
            # Sets up an infinite loop so the server is always on until a keyboard interrupt occurs
            while 1>0:
                #  Wait for next request from client
                # string = socket.recv_string().lower()
                print("Waiting for request...")
                message = socket.recv_string().lower()
                print("Received request: %s " % message)


                # Testing to see what the request sent to the server was. The only requests we
                # care about are test1, test2, test3, & test4. Anything else will send back 
                # "invalid request" to the client.
                if message == "test1":
                    # Immediately sends a response to the GUI, begins the test and PUBServer, then resets the message variable.
                    socket.send(b"Request receieved for Test 1. Starting test.")
                    self.begin_processes(message)
                    message = ''               
                    
                elif message == "test2":
                    # Immediately sends a response to the GUI, begins the test and PUBServer, then resets the message variable.
                    socket.send(b"Request receieved for Test 2. Starting test.")
                    self.begin_processes(message)
                    message = ''   

                elif message == "test3":
                    # Immediately sends a response to the GUI, begins the test and PUBServer, then resets the message variable.
                    socket.send(b"Request receieved for Test 3. Starting test.")
                    self.begin_processes(message)
                    message = ''   

                elif message == "test4":
                    # Immediately sends a response to the GUI, begins the test and PUBServer, then resets the message variable.
                    socket.send(b"Request receieved for Test 4. Starting test.")
                    self.begin_processes(message)
                    message = ''   

                else:
                    # Contingency response for debugging
                    socket.send(b"Invalid request. Request must be a test.")

        # Keyboard interrupt with ZMQ has a bug when on BOTH Windows AND Python at the same time.
        # This code should allow for CTRL + C interrupt for the server on any non-windows system.
        except KeyboardInterrupt:
            print("Closing the server...")
            socket.close()
            cxt.term()

    # The target function for processs_test being created in begin_process
    def task_test(self, conn, desired_test):
        # Tests for what test is being requested and then starts the corresponding test.
        # If it is not one of the tests, this passes (maybe change that.)
        # Every test tasks "conn" which is for piping "print" statements
        # from the tests to the publish server
        if desired_test == 'test1':
            test1 = GenResTest(conn)
        elif desired_test == 'test2':
            test2 = IDResTest(conn)
        elif desired_test == 'test3':
            test3 = I2CConnTest(conn)
        elif desired_test == 'test4':
            test4 = BitRateTest(conn)
        else:
            pass

    # The target function for process_PUBServer being created in begin_process
    def task_PUBServer(self, conn):
        pub_server = PUBServer(conn)

    # Starts up the test and PUBServer as separate processes
    def begin_processes(self, desired_test):
        print("Starting processes")
        conn_test, conn_PUBServer = mp.Pipe()
        process_test = mp.Process(target = self.task_test, args=(conn_test, desired_test,))
        process_PUBServer = mp.Process(target = self.task_PUBServer, args=(conn_PUBServer,))
        
        process_test.start()
        process_PUBServer.start()

        # Prevents the code from continuing here until both processes have ended.
        process_test.join()
        process_PUBServer.join()

        print("Processes have ended.")

# Having an odd bug where it trys to instantiate the server twice, this prevents anything weird from happening
try:
    # Instantiates the server        
    REP_Server = REPServer()
except:
    print("REPServer already instantiated")
