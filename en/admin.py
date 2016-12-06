from django.contrib import admin

from en.models import *

# Register your models here.


class list_menu(admin.ModelAdmin):
    list_display = ('id','name','url','time','images')

    fieldsets = (
        ('菜单信息',{'fields':('id','name','url','images')}),
    )
class pro_list(admin.ModelAdmin):
    list_display = ('name','reduce','url','img')

    class Media:
        js = ('/js/tinymce/js/tinymce/tinymce.min.js',
              '/js/textareas.js')



admin.site.register(Menu,list_menu)
admin.site.register(Product,pro_list)