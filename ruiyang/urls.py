"""ruiyang URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
import django
import os
from django.conf.urls import url,include
from django.contrib import admin
from django.conf.urls.static import *
from ruiyang import settings
from en import enviews
from ruiyang import views

from django.db.models import permalink
from DjangoUeditor import urls as DjangoUeditor_urls
from en.admin import *


urlpatterns = [
    url(r'^admin/', admin_site.urls),
    #url(r'^user/', admin.site.urls),
    url(r'^$', enviews.index,name='english'),
    #url(r'^product/(?P<pname>\d{1,3})/$',enviews.show_pro_detail,name='show_pro'),
    url(r'^product/(?P<pname>[0-9A-Za-z]+)/$',enviews.show_pro_detail,name='show_pro'),
 #   url(r'^captcha/',include('captcha.urls')),
    url(r'^about_us/$', enviews.about),
    url(r'^about_us/exhi/(?P<id>[0-9]+)', enviews.exhi_detail,name='exhi_detail'),
url(r'^about_us/news/(?P<id>[0-9]+)', enviews.news_detail,name='news_detail'),
    url(r'^email/$', enviews.get_email),
    url(r'^information/', enviews.infor,name='information'),
    url(r'^contact_us/', enviews.contact_us,name='contact'),
    url(r'^ueditor/', include(DjangoUeditor_urls)),

]

media_root = os.path.join(settings.BASE_DIR,'upload')
urlpatterns +=static('/upload/',document_root = media_root)
