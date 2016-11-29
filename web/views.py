from django.shortcuts import render,render_to_response
from web.models import *


# Create your views here.


def index(request):
    menu = Menu.objects.all()

    return  render_to_response('index.html',locals())



