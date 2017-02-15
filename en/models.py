#-*-coding=utf-8 -*-
from django.db import models

from django import forms
from DjangoUeditor.models import UEditorField

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
    name = models.CharField(verbose_name='产品名称',max_length=100,unique=True,null=False)
    adver = models.TextField(verbose_name='产品优势',null=True)
    reduce = models.TextField(verbose_name='产品介绍')
    index = models.BooleanField(verbose_name='是否展示首页',default=False)
    image = models.ImageField(verbose_name='产品图片',upload_to='products',null=True)




    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '产品'
        verbose_name_plural = '产品编辑'




class Pro_Images(models.Model):
    '''
    产品图片
    '''

    name = models.ForeignKey(Product)
    image = models.ImageField(verbose_name='产品图片',upload_to='products',null=True)



    class Meta:
        verbose_name_plural = '产品图片'



class Com_info(models.Model):
    '''
    公司信息
    '''
    info = models.TextField('公司信息')

    class Meta:
        verbose_name = '公司信息'
        verbose_name_plural = '公司信息'


class Com_cer(models.Model):
    '''
    公司证书
    '''

    name = models.ForeignKey(Com_info)
    images = models.ImageField(verbose_name='证书',upload_to='cer')

    class Meta:
        verbose_name_plural = '公司证书'




class News(models.Model):
    '''
    新闻
    '''
    title = models.CharField('标题',max_length=30)
    context = UEditorField('内容',height=300, width=1000,
        default=u'', blank=True, imagePath="news",
        toolbars='besttome', filePath='files')
    date = models.DateField(auto_now=True)

    class Meta:
        verbose_name = '新闻'
        verbose_name_plural = '新闻'




class News_Images(models.Model):
    '''
    新闻图片
    '''

    name = models.ForeignKey(News)
    image = models.ImageField(verbose_name='新闻图片',upload_to='news')

    class Meta:
        verbose_name_plural = '新闻图片'




class Exhi(models.Model):
    '''
    展会
    '''

    title = models.CharField(max_length=30)
    context = models.TextField('展会内容')

    class Meta:
        verbose_name = '展会'
        verbose_name_plural = '展会'




class Exhi_Image(models.Model):
    name = models.ForeignKey(Exhi)
    image = models.ImageField(verbose_name='展会图片',upload_to='exhi')

    class Meta:
        verbose_name_plural = '展会图片'




class Case(models.Model):

    head = models.ImageField('用户头像',upload_to='head',)
    name = models.CharField('用户名',max_length=20)
    context = models.TextField('用户留言')

    class Meta:
        verbose_name = '客户案例'
        verbose_name_plural = '客户案例'


class Technology(models.Model):
    '''
    科技
    '''

    ques = models.TextField()
    ans = models.TextField()

    class Meta:
        verbose_name = '科技'
        verbose_name_plural = '科技'



class Contect(models.Model):
    '''
    客户意见
    '''
    name = models.CharField('客户名',max_length=20)
    company = models.CharField('客户公司名',max_length=40)
    tel = models.IntegerField('客户电话')
    country = models.CharField('所在国家',max_length=20)
    email = models.EmailField('客户邮件')
    requ = models.TextField('客户意见')

    class Meta:
        verbose_name = '客户意见'
        verbose_name_plural = '客户意见'

