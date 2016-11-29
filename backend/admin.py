from django.contrib import admin
from backend.models import *
# Register your models here.

class list_user(admin.ModelAdmin):
    list_display = ('host_name','host_ip','username','port')


admin.site.register(Host)
admin.site.register(User,list_user)