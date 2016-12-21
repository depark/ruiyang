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
    model = Pro_Images
    fk_name = 'name'

class  productuser(admin.ModelAdmin):
    list_display = ('name', 'adver','reduce','index','image' )



class companyadmin(NestedStackedInline):
    model = Com_cer
    fk_name = 'name'

class companyuse(NestedModelAdmin,admin.ModelAdmin):
    model = Com_info
    inlines = [companyadmin]

class newsadmin(NestedStackedInline):
    model = News_Images
    fk_name = 'name'

class newsuse(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('title','context','date')
    model = News
    inlines = [newsadmin]

class exhiadmin(NestedStackedInline):
    model = Exhi_Image
    fk_name = 'name'

class exhiuse(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('title','context')
    model = Exhi
    inlines = [exhiadmin]


class case(admin.ModelAdmin):

    list_display = ('name','context','head')


class Technologyuse(admin.ModelAdmin):
    list_display = ('ques','ans')

class  contach(admin.ModelAdmin):
    list_display = ('name','company','name','tel','country','email','requ')




admin.site.register(Menu,list_menu)
admin.site.register(Product,productuser)
admin.site.register(News,newsuse)
admin.site.register(Com_info,companyuse)
admin.site.register(Exhi,exhiuse)
admin.site.register(Case,case)
admin.site.register(Technology,Technologyuse)
admin.site.register(Contect,contach)