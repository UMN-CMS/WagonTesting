# Importing necessary modules
import zmq, logging
import time

# Creating a class for the SUBSCRIBE socket-type Client
class LCD_SUBClient():

    def __init__(self, lcd):
        # Insantiates variables       
        self.message = ""
        self.test_res = []

        self.lcd = lcd
        # Creates the zmq.Context object
        cxt = zmq.Context()
        # Creates the socket as the SUBSCRIBE type
        listen_socket = cxt.socket(zmq.SUB)
        listen_socket.connect("tcp://localhost:5556")
        # Sets the topics that the server will listen for
        listen_socket.setsockopt(zmq.SUBSCRIBE, b'LCD')

        try:
            while 1 > 0:
                # Splits up every message that is received into topic and message
                # the space around the semi-colon is necessary otherwise the topic and messaage
                # will have extra spaces.
                self.topic, self.message = listen_socket.recv_string().split(" ; ")

                if self.topic == "LCD":

                    if "Percent" in self.message:
                        per = self.message.split(":")[1].split(" ")[0]
                        test = self.message.split(":")[-1]
                        
                        lcd.loading_bar(test, float(per))
                    
                    elif "Passed" in self.message:
                        print(self.message)
                        passed = self.message.split(":")[2]
                        self.test_res.append(passed)
                        test = str(self.message.split(":")[-1])

                        lcd.test_result(test, passed="True")

                        if "4" in test:
                            if all(self.test_res):
                                lcd.happy_face() 
                                break
                            else:
                                lcd.sad_face()
                                break

                        break
                    elif "Exit." in self.message:
                        break


                else: pass

                    
        except Exception as e:
            print(e)

        try:
            if "4" in test:
                time.sleep(5)
                lcd.home()
        except:
            pass
