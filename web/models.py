from django.db import models

# Create your models here.



class Menu(models.Model):
    id = models.IntegerField(primary_key=True,unique=True)
    name = models.CharField(max_length=20,unique=True,null=False)
    url = models.URLField(null=False,default='#')
    time = models.DateTimeField(auto_now=True,)

    def __str__(self):
        return self.name
