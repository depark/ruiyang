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



urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', enviews.index,name='english'),
    url(r'^product/$',enviews.pro,name='product'),
    url(r'^test/$',views.test1,name='test'),
    url(r'^news/$',enviews.news),
url(r'^news/(?P<news_id>[0-9A-Za-z]*)/$',enviews.news_detail,name='news'),
    url(r'^search/$',views.search,name='search'),
    #url(r'^product/(?P<pname>\d{1,3})/$',enviews.show_pro_detail,name='show_pro'),
    url(r'^product/(?P<pname>[0-9A-Za-z]+)/$',enviews.show_pro_detail,name='show_pro'),
 #   url(r'^captcha/',include('captcha.urls')),
    url(r'^ueditor/', include(DjangoUeditor_urls)),

]

media_root = os.path.join(settings.BASE_DIR,'upload')
urlpatterns +=static('/upload/',document_root = media_root)
