
from django.db import models



# Create your models here.



class Menu(models.Model):
    '''
    生成菜单
    '''
    id = models.IntegerField(primary_key=True,unique=True)
    name = models.CharField('菜单名',max_length=20,unique=True,null=False)
    url = models.URLField('菜单链接',null=False,default='#')
    time = models.DateTimeField('创建时间',auto_now=True,)
    images = models.ImageField(upload_to='images',null=True)
    def __str__(self):
        return self.name
    class Meta:
        verbose_name = '菜单生成'
        verbose_name_plural = '菜单编辑'
        ordering = ['id']