from django.shortcuts import *
from django.contrib import *



def index(request):
    return render_to_response('en/index.html',locals())