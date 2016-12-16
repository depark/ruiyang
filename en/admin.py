#-*-coding=utf-8 -*-
from django.contrib import admin
from nested_inline.admin import NestedStackedInline,NestedModelAdmin
from en.models import *

# Register your models here.


class list_menu(admin.ModelAdmin):
    list_display = ('id','name','url','time','images')

    fieldsets = (
        ('菜单信息',{'fields':('id','name','url',)}),
    )

#  class Media:
#     js = ('/js/tinymce/js/tinymce/tinymce.min.js',
#          '/js/textareas.js')



class productadmin(NestedStackedInline):
    model = Images
    fk_name = 'name'

class  productuser(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('name', 'reduce', 'url',)
    model = Product
    inlines = [productadmin]


admin.site.register(Menu,list_menu)
admin.site.register(Product,productuser)
