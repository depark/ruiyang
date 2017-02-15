# -*- coding: UTF-8 -*-
from django.contrib import *
from django.shortcuts import *
from en.models import *

from django.contrib import staticfiles




def index(request):
#    print(request.LANGUAGE_CODE)
#    if request.method == 'POST':
#        form = CaptchaTestForm(request.POST)
#        if form.is_valid():
#            human = True#
#
#            return HttpResponse('welcome')
#    else:
#        form = CaptchaTestForm()

#    if request.GET['newsn'] == '1':
#        csn = CaptchaStore.generate_key()
#        cimageurl = captcha_image_url(csn)
#        return HttpResponse(cimageurl)

    return  render_to_response('en/index.html',locals())

def pro(request):
    title = u'显示产品'
    p_list = Product.objects.all()
    print('query pro')
    for i in p_list:
        print(i.name)
    return render_to_response('en/products.html',locals())

def show_pro_detail(request,pname):
    pro = Product.objects.get(name = pname)
    title = pro.name
    print(pro.name,pro.image)

    return render_to_response('en/show_pro.html',locals())

def news(request):
    is_list = True
    news = News.objects.all()
    return render_to_response('en/news.html', locals())

def news_detail(request,news_id):
    is_list = False
    news = News.objects.get(id=news_id)
    return render_to_response('en/news.html',locals())