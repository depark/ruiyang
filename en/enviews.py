# -*- coding: UTF-8 -*-
from django.contrib import *
from django.shortcuts import *
from en.models import *

from django.contrib import staticfiles

#全局变量
com_info = Com_info.objects.order_by('id')[0:1]

def index(request):
    banner_images = Banner.objects.all().order_by('id')
    products_list = Product.objects.all()
    advantage_list = Advantage.objects.all()
    be_af_images = Case.objects.all().order_by('id')
    adv = Index_adv.objects.all().order_by('id')[0:1]
    com_info = Com_info.objects.order_by('id')[0:1]

    #numbers =
    title = 'Home'
    #first loop
    class1 = 'cur'
    #second loop
    class2 = None


    return  render_to_response('en/index.html',locals())


def about(request):
    products_list = Product.objects.all()
    exhi_num = []
    com_info = Com_info.objects.order_by('id')[0:1]
    exhis = Exhi.objects.all().order_by('id')
    for i in exhis:
        exhi = []
        image_num = Exhi_Image.objects.filter(name_id=i.id).count()
        exhi.append(i.id)
        exhi.append(image_num)
        exhi.append(i.title)
        exhi.append(i.image)
        exhi_num.append(exhi)
    #新闻列表
    news = News.objects.all()
    #证书列表
    cers = Com_cer.objects.all()
    return render_to_response('en/about_us.html',locals())


#展会展示详情页
def exhi_detail(request,id):
    products_list = Product.objects.all()
    com_info = Com_info.objects.order_by('id')[0:1]
    images = Exhi_Image.objects.filter(name_id=id)
    return render_to_response('en/exhibition_details.html',locals())


def infor(request):
    title = 'information'
    faq = Faq.objects.all().order_by('id')
    class1 = 'bellows__item bellows--is-open'
    class2 = 'bellows__item'
    banner_images = Banner.objects.all().order_by('id')
    products_list = Product.objects.all()
    advantage_list = Advantage.objects.all()
    be_af_images = Case.objects.all().order_by('id')
    com_info = Com_info.objects.order_by('id')[0:1]

    return render_to_response('en/information-FAQ.html',locals())

def contact_us(request):
    if request.method == 'POST':
        TIJIAO = True
        name = request.POST['Name']
        company = request.POST['Company']
        tel = request.POST['Tel']
        country = request.POST['Country']
        email = request.POST['Email']
        require = request.POST['Requir']
       # print name,company,tel,country,email,require
        try:
            p = Contect(name=name,company=company,tel=tel,country=country,email=email,requ=require)
            p.save()
            success = 'Thanks for your suggest'
        except Exception as e:
            success = 'wrong happend ,try later again'
    banner_images = Banner.objects.all().order_by('id')
    products_list = Product.objects.all()
    advantage_list = Advantage.objects.all()
    be_af_images = Case.objects.all().order_by('id')
    com_info = Com_info.objects.order_by('id')[0:1]
    #print request.META
    #print 'host is '+request.get_host()
    #print 'path is '+request.path
    url = request.META['HTTP_REFERER']
    #print url.split(request.get_host())[1]


    return render_to_response('en/contact.html', locals())

def pro(request):
    title = u'显示产品'
    p_list = Product.objects.all()
    print('query pro')
    for i in p_list:
        print(i.name)
    return render_to_response('en/products.html',locals())

def show_pro_detail(request,pname):
    banner_images = Banner.objects.all().order_by('id')
    products_list = Product.objects.all()
    advantage_list = Advantage.objects.all()
    be_af_images = Case.objects.all().order_by('id')
    com_info = Com_info.objects.order_by('id')[0:1]
    pro = Product.objects.get(name = pname)
    title = pro.name
    #print(pro.name,pro.image)

    return render_to_response('en/product-detial.html',locals())

def news_detail(request,id):
    products_list = Product.objects.all()
    com_info = Com_info.objects.order_by('id')[0:1]
    news = News.objects.get(id=id)
    print news.title,news.context

    return render_to_response('en/news_detail.html',locals())

def show_cers(request):
    exhi_ids = []
    image_list = []
    exhi_list = Exhi.objects.all()
    #image_list = Exhi_Image.objects.all().values_list('name__id','image')
    for i in exhi_list:
        exhi_ids.append(i.id)
    exhi_ids.sort()
    for id in exhi_ids:
        ima=[]
        images = Exhi_Image.objects.filter(name_id=id)
        for im in images:
            ima.append(im)
        image_list.append(ima)
    print(image_list)
    for i in image_list:
        for k in i:
            print(k.image)
    return render_to_response('en/exhi.html',locals())

def get_email(request):
    if request.method == 'POST':
        email = request.POST['Email']
        em = Rece_Email.objects.filter(email=email)
        if not em:
            e = Rece_Email(email=email)
            e.save()
            print email+'  has written'
        email_tijiao = True
        success = 'Thanks for your find'
        com_info = Com_info.objects.order_by('id')[0:1]
        url = request.META['HTTP_REFERER']
        host = request.get_host()
        #print url,host
        real_url = url.split(host)[1]
        #print real_url
        return HttpResponseRedirect(real_url)

    else:
        return HttpResponse(status=404)