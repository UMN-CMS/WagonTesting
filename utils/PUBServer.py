# Importing necessary modules
import zmq, signal

# Creates the class for the PUBServer
class PUBServer():

    def __init__(self, conn):
        # Making the conn variable accessible in later code
        self.conn = conn
        print("Publish Server starting up...")
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
        while 1 > 0:
            prints = conn.recv()
            if prints == "Done.":
                prints = "print ; " + prints
                pub_socket.send_string(prints)
                json = conn.recv()
                json = "JSON ; " + json 
                pub_socket.send_string(json)
                # Breaks the loop once it sends the JSON so the server will shut down
                break
            else:
                prints = "print ; " + prints
                pub_socket.send_string(prints)

        # Closes the server once the loop is broken so that there is no hang-up in the code
        print("PUBServer Closing")    
        pub_socket.close()