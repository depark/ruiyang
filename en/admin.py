#-*-coding=utf-8 -*-
from django.contrib import admin
from nested_inline.admin import NestedStackedInline,NestedModelAdmin
from en.models import *

# Register your models here.




#  class Media:
#     js = ('/js/tinymce/js/tinymce/tinymce.min.js',
#          '/js/textareas.js')

from django.contrib import admin
from django.contrib.auth.models import Permission






class  productuser(admin.ModelAdmin):
    list_display = ('name', 'adver','is_index','image' )


class exhiadmin(NestedStackedInline):
    model = Exhi_Image
    fk_name = 'name'

class exhiuse(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('title','context')
    model = Exhi
    inlines = [exhiadmin]

class Cer_admin(NestedStackedInline):
    model = Com_cer
    fk_name = 'name'

class Cercom_admin(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('id','name')
    model = Company
    inlines = [Cer_admin]

class case(admin.ModelAdmin):

    list_display = ('name','context','head')


class Technologyuse(admin.ModelAdmin):
    list_display = ('ques','ans')

class  contach(admin.ModelAdmin):
    list_display = ('name','company','name','tel','country','email','requ')
    readonly_fields = ('name','company','name','tel','country','email','requ')

class banner_admin(admin.ModelAdmin):
    list_display = ('id','name','images')

class faq_admin(admin.ModelAdmin):
    list_display = ('id','question','answer')


class News_admin(admin.ModelAdmin):
    list_display = ('id','title','datetime','context')

admin.site.register(Product,productuser)
admin.site.register(Exhi,exhiuse)
admin.site.register(Case,case)
admin.site.register(Contect,contach)
admin.site.register(Banner,banner_admin)
admin.site.register(Company,Cercom_admin)
admin.site.register(News,News_admin)
admin.site.register(Faq,faq_admin)