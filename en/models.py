#-*-coding=utf-8 -*-
from django.db import models
from en.rename_image import *
from django import forms
from DjangoUeditor.models import UEditorField
from django.core.files.storage import FileSystemStorage
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
    #is_index = models.BooleanField(verbose_name='是否首页展示产品优势',default=1)
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
        default='', blank=True, imagePath="news",
        toolbars='full', filePath='files')
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
    image = models.ImageField('封面图片',upload_to='exhi',default='exhi/1.png')

    class Meta:
        verbose_name = '展会'
        verbose_name_plural = '展会'
        ordering = ['id']

class Exhi_Image(models.Model):

    name = models.ForeignKey(Exhi)
    image = models.ImageField(verbose_name='展会图片',upload_to='exhi')


    class Meta:
        verbose_name_plural = '展会图片'



    #def save(self,*args,**kwargs):
    #    print self.name.title,self.image
    #    self.image = str(self.name.title+'/'+self.image)
    #    super(self.__class__,self).save(*args,**kwargs)

class Faq(models.Model):
    '''
    FAQ问答
    '''
    question = models.CharField(verbose_name='问题',max_length=200)
    answer = UEditorField('答案',height=500,width=1200,default='u',blank=True,imagePath='faq',toolbars='normal',filePath='files')

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
        default_permissions = ('change','delete')
        verbose_name = '客户意见'
        verbose_name_plural = '客户意见'

class Case(models.Model):
    '''
    案例
    '''
    name = models.CharField('部位',max_length=20)
    image = models.ImageField(verbose_name='image',upload_to='cases',default='null')



    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '案例对比图'
        verbose_name_plural = '案例对比图'

class Advantage(models.Model):
    '''
    首页优势
    '''
    name = models.CharField(verbose_name='优势',max_length=20)
    context = models.CharField(verbose_name='内容',max_length=200)
    image = models.ImageField(verbose_name='图标',upload_to='advantage')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '优势'
        verbose_name_plural = '优势'

class Com_info(models.Model):
    '''
    公司信息展示
    '''
    name = models.CharField(verbose_name='公司名',max_length=30)
    number = models.CharField(verbose_name='公司号码',max_length=20)
    email = models.EmailField(verbose_name='公司邮箱',null=False)
    trademark = models.CharField(verbose_name='公司版权',max_length=50)
    addr = models.CharField(verbose_name='公司地址',max_length=50)
    fa = models.URLField(verbose_name='facebook链接',null=True,blank=True)
    tw = models.URLField(verbose_name='twitter链接',null=True,blank=True)
    go = models.URLField(verbose_name='google链接', null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        default_permissions = ('change')
        verbose_name = '公司信息'
        verbose_name_plural = '公司信息'

class Index_adv(models.Model):
    '''
    首页展示优势
    '''
    title = models.CharField('首页优势标题',max_length=30)
    adv = models.TextField('首页优势内容')

    def __str__(self):
        return self.title

    class Meta:
        default_permissions = ('change')
        verbose_name = '首页优势标题'
        verbose_name_plural = '首页优势内容'

class Rece_Email(models.Model):
    '''
    用户提交email地址
    '''
    email = models.EmailField('用户提交的email地址')

    def __str__(self):
        return self.email

    class Meta:
        verbose_name = '用户提交的email地址'
        verbose_name_plural = '用户提交的email地址'




