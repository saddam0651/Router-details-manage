from django.db import models

# Create your models here.


class Router(models.Model):
    sapId = models.CharField(max_length=18)
    hostname = models.CharField(max_length=14, unique=True)
    loopback = models.GenericIPAddressField()
    macAddress = models.CharField(max_length=17)

    def __str__(self):
        return self.hostname
