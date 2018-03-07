#-*-coding=utf-8 -*-
from django.contrib import admin
from nested_inline.admin import NestedStackedInline,NestedModelAdmin
from en.models import *
from django.contrib.auth.models import User,Group

# Register your models here.




#  class Media:
#     js = ('/js/tinymce/js/tinymce/tinymce.min.js',
#          '/js/textareas.js')

from django.contrib import admin
from django.contrib.auth.models import Permission


class MyAdminSite(admin.AdminSite):
    site_title = 'Hardem 后台'
    site_header = 'hardem backup'
    index_title = 'hardem managment'

admin_site=MyAdminSite()




class  productuser(admin.ModelAdmin):
    list_display = ('id','name', 'image' )


class exhiadmin(NestedStackedInline):
    model = Exhi_Image
    fk_name = 'name'

class exhiuse(NestedModelAdmin,admin.ModelAdmin):
    list_display = ('id','title','context')
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

    list_display = ('name','image')


class Technologyuse(admin.ModelAdmin):
    list_display = ('ques','ans')

class  contach(admin.ModelAdmin):
    list_display = ('id','name','company','name','tel','country','email','requ','time')
    readonly_fields = ('name','company','name','tel','country','email','requ','time')

class banner_admin(admin.ModelAdmin):
    list_display = ('id','name','images')

class faq_admin(admin.ModelAdmin):
    list_display = ('id','question','answer')


class News_admin(admin.ModelAdmin):
    list_display = ('id','title','datetime','top')

class Advantage_admin(admin.ModelAdmin):
    list_display = ('id','name','context')

class Com_info_admin(admin.ModelAdmin):
    list_display = ('id','name','number','email','trademark')


class Index_adv_admin(admin.ModelAdmin):
    list_display = ('title','adv')

class Contact_banner_admin(admin.ModelAdmin):
    list_display = ('id','name','image')

class Recv_email(admin.ModelAdmin):
    list_display = ('id','email')
    readonly_fields = ('email',)
#admin.site.register(Product,productuser)
#admin.site.register(Exhi,exhiuse)
#admin.site.register(Case,case)
#admin.site.register(Contect,contach)
#admin.site.register(Banner,banner_admin)
#admin.site.register(Company,Cercom_admin)
#admin.site.register(News,News_admin)
#admin.site.register(Faq,faq_admin)
#admin.site.register(Advantage,Advantage_admin)
#admin.site.register(Com_info,Com_info_admin)


admin_site.register(Contact_banner,Contact_banner_admin)
#admin_site.register(Exhi,exhiuse)
admin_site.register(Case,case)
admin_site.register(Product,productuser)
admin_site.register(Contect,contach)
admin_site.register(Banner,banner_admin)
admin_site.register(Company,Cercom_admin)
admin_site.register(News,News_admin)
admin_site.register(Faq,faq_admin)
admin_site.register(Advantage,Advantage_admin)
admin_site.register(Com_info,Com_info_admin)
admin_site.register(Index_adv,Index_adv_admin)
admin_site.register(Rece_Email,Recv_email)
admin_site.register(User)
admin_site.register(Group)