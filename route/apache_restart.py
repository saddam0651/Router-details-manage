import subprocess


# to auto restart apache server
subprocess.check_call("sudo service httpd start".split())