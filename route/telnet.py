import getpass
import telnetlib

# telnet to the server


HOST = "69.197.160.182"
PORT = 22
TIMEOUT = 10
user = input("Enter your remote account: ")
password = getpass.getpass()
tn = telnetlib.Telnet(HOST)
tn.read_until("login: ")
tn.write(user + "\n")
if password:
    tn.read_until("Password: ")
    tn.write(password + "\n")
tn.write("ls\n")
tn.write("exit\n")
print(tn.read_all())
