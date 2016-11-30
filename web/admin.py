from django.contrib import admin

from web.models import *

# Register your models here.


class list_menu(admin.ModelAdmin):
    list_display = ('id','name','url','time','images')

    fieldsets = (
        ('菜单信息',{'fields':('id','name','url','images')}),
    )

admin.site.register(Menu,list_menu)