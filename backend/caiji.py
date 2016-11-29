from backend.models import *
import paramiko

def catch(ip,port,user,password,command):
      ssh = paramiko.SSHClient()
      ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
      ssh.connect(ip,port,user,password)
      stdin, stdout, stderr = ssh.exec_command(command)
      return stdout.readlines()

ip_list = []
ip = User.objects.all()
for i in ip:
    hostname = i.host_name
    type = catch(i.ip,i.port,i.username,i.password,'uname')


    p = Host.objects.create(hostname=hostname,
                            os_type=type,
                            host_cpu = cpu_info,
                            total_memory = total_memory,
                            used_momery = used_memory,
                            available_momery = ava_momory,
                            hard_disk = disk,
                            Ethernet_Interface = interface
                            )
    p.save()
    pass
