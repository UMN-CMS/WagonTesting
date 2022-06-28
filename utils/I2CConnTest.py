# Importing necessary modules
import time, json


class I2CConnTest():

    def __init__(self, conn):
        time.sleep(1)
        for i in range(13):
            conn.send("Run:"+ str(i))
            time.sleep(0.25)





#################################################################################

    # Include this in every test file
        # Or in some sense

        conn.send("Done.")
        time.sleep(0.25)
        
        # Test code to ensure json/text sending is working correctly
        current_JSON_file = open("./testingJSON.JSON")
        current_JSON_data = json.load(current_JSON_file)
        json_string = json.dumps(current_JSON_data)
        print(json_string)
        conn.send(json_string)
