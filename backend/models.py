from django.db import models

# Create your models here.

class Host(models.Model):
    host_ip = models.GenericIPAddressField(unique=True)
    hostname = models.CharField('host_name',max_length=50,default='Null')
    os_type = models.CharField('os type',max_length=50,default='Null')
    host_cpu = models.CharField('cpu',max_length=50,default='Null')
    total_memory = models.CharField('memory',max_length=50,default='Null')
    used_momery = models.CharField('used memory',max_length=40,default='Null')
    available_momery = models.CharField('available memory',max_length=30,default='Null')
    hard_disk = models.CharField('disk',max_length=40,default='Null')
    Ethernet_Interface = models.CharField("Ethernet_Interface", max_length=364, default='Null')
    date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.hostname



class User(models.Model):
    host_ip = models.GenericIPAddressField(unique=True)
    host_name = models.CharField(max_length=50,default='Null')
    username = models.CharField(max_length=30,default='root')
    password = models.CharField(max_length=1024)
    port = models.IntegerField(default=22)

    def __str__(self):
        return self.host_ip