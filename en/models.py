#-*-coding=utf-8 -*-
from django.db import models

from django import forms
from DjangoUeditor.models import UEditorField

# Create your models here.


class Banner(models.Model):
    '''
    首页banner，只展示三张，按照编号
    '''
    name = models.CharField(verbose_name='banner名称',max_length=100,null=True)
    images = models.ImageField(verbose_name='banner图片',upload_to='banner',null=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'banner图片'
        verbose_name_plural = 'banner图片'


class Product(models.Model):
    '''
    产品
    '''
    name = models.CharField(verbose_name='产品名称',max_length=100,unique=True,null=False)
    adver = models.TextField(verbose_name='产品优势',null=True)
    is_index = models.BooleanField(verbose_name='是否首页展示产品优势',default=1)
    image = models.ImageField(verbose_name='产品首页展示图片',upload_to='product')
    context = UEditorField('产品内容', height=300, width=1000,
                           default=u'', blank=True, imagePath="banner",
                           toolbars='besttome', filePath='files')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '产品'
        verbose_name_plural = '产品'



class Company(models.Model):
    '''
    公司名
    '''
    name = models.CharField('公司名',max_length=50)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '公司证书'
        verbose_name_plural = '公司证书'


class Com_cer(models.Model):
    '''
    公司证书
    '''
    name = models.ForeignKey(Company)
    images = models.ImageField(verbose_name='证书',upload_to='cer')



    class Meta:
        verbose_name = '公司证书'
        verbose_name_plural = '公司证书'



class News(models.Model):
    '''
    新闻
    '''
    title = models.CharField('标题',max_length=30)
    context = UEditorField('内容',height=300, width=1000,
        default=u'', blank=True, imagePath="news",
        toolbars='besttome', filePath='files')
    datetime= models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '新闻'
        verbose_name_plural = '新闻'









class Exhi(models.Model):
    '''
    展会图片
    '''

    title = models.CharField(max_length=30)
    context = models.TextField('展会内容',null=True)

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


class Faq(models.Model):
    '''
    FAQ问答
    '''
    question = models.TextField(verbose_name='问题',max_length=500,null=False)
    answer = models.TextField(verbose_name='答案',max_length=500,null=False)

    def __str__(self):
        return self.question

    class Meta:
        verbose_name = 'FAQ'
        verbose_name_plural = 'Faq'


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

