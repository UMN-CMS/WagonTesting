import socket
hostname = socket.gethostname()
ipaddress = socket.gethostbyname(hostname)
print("\n\n\nRun the command './client_setup.py {ip_address}' on the GUI computer.\n\n\n".format(ip_address = ipaddress))
