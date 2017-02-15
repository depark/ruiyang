from django.shortcuts import *
from django.contrib import *







def index(request):
       return HttpResponseRedirect('/en')


def test(request):
       if request.method == 'GET':
              c = request.META
              a = request.GET['username']
              b = request.path
              d= request.GET['id']
              print(a,d)
              return HttpResponse('this get is ok')

       if request.method == 'POST':

              b=request.POST['body']
              print(b)
              print(request.POST['name'])
              return HttpResponse('this post ok')

def test1(request):
       return render_to_response('en/test.html')

def search(request):
       a=request.POST['search']
       print(request.POST['search'])
       return HttpResponse(a)


