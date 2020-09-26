import paramiko

# SSH to a server


p = paramiko.SSHClient()
p.set_missing_host_key_policy(paramiko.AutoAddPolicy())
p.connect("69.197.160.182", port=22, username="user", password="pass")
stdin, stdout, stderr = p.exec_command("your command")
opt = stdout.readlines()
opt = "".join(opt)
print(opt)
