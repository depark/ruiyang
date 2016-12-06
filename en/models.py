
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


class Product(models.Model):
    '''
    产品
    '''
    name = models.CharField('产品名称',max_length=100,unique=True,null=False)
    reduce = models.TextField('产品介绍')
    url = models.URLField('产品链接',max_length=50,null=True,blank=True)
    img = models.ImageField('产品图片',upload_to='products',null=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '产品'
        verbose_name_plural = '产品编辑'



