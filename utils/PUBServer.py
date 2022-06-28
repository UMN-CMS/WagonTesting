# Importing necessary modules
import zmq, signal, logging, os

if not os.path.isdir("logs"):
    os.makedirs("logs")

logging.basicConfig(filename='/home/HGCAL_dev/sw/utils/logs/PUBServer.log', filemode='w', level=logging.DEBUG, format='%(asctime)s %(message)s')

# Creates the class for the PUBServer
class PUBServer():

    def __init__(self, conn):
        # Making the conn variable accessible in later code
        self.conn = conn
        logging.info("Publish Server starting up...")
        # Used to allow CTRL+C keyboard interrupt
        signal.signal(signal.SIGINT, signal.SIG_DFL)
        # Creates zmq.Context object
        cxt = zmq.Context()
        # Sets socket type to PUBLISH
        pub_socket = cxt.socket(zmq.PUB)
        # Server side .bind
        pub_socket.bind("tcp://*:5556")

        # Creates a while loop that is searching for the "print" messages on the pipe
        # Sends them immediately and once it receieves "Done." It prepares to receive and send
        # the json files of results.
        try:
            while 1 > 0:
                prints = conn.recv()
                logging.info("Print statement received.")
                logging.debug("Testing if print statement is 'Done.'")
                if prints == "Done.":
                    logging.debug("String variable prints = 'Done.'")
                    prints = "print ; " + prints
                    logging.info("'print' topic added to the prints variable.")
                    pub_socket.send_string(prints)
                    logging.info("Sent final print statement.")
                    logging.info("Waiting for JSON on Pipe")
                    json = conn.recv()
                    logging.info("JSON receieved.")
                    json = "JSON ; " + json 
                    logging.debug("JSON topic added to json string")
                    pub_socket.send_string(json)
                    logging.info("JSON sent.")
                    # Breaks the loop once it sends the JSON so the server will shut down
                    break
                else:
                    logging.debug("String variable prints did not equal 'done'")
                    prints = "print ; " + prints
                    logging.debug("'print' topic added to prints variable.")
                    pub_socket.send_string(prints)
                    logging.info("Sent print statement.")
            
            logging.debug("Loop has been broken.")
        except:
            logging.critical("PUBServer has crashed.")

        # Closes the server once the loop is broken so that there is no hang-up in the code
        logging.info("PUBServer Closing")    
        pub_socket.close()
