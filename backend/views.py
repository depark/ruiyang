from django.shortcuts import *
from django.contrib import auth
from django.contrib.auth.decorators import *
from backend.models import *
#from backend import caiji
from backend.task import add
import  threading


# Create your views here.



def login(request):
    print(request.user)
    #t=threading.Thread(target=add,args=('jack',))
    #t.start()
    #t.join()

    if request.user.is_authenticated():
        return HttpResponseRedirect('/showDashboard')
    else:
        return render_to_response('login.html')


def account_auth(request):
    username = request.POST['username']
    password = request.POST['password']
    print(username,password)
    user = auth.authenticate(username=username,password=password)
    if user is not None and user.is_active:
        auth.login(request,user)
       # print(request.user)
        return HttpResponseRedirect('/admin')
    else:
        return render_to_response('login.html',{'login_err':'Wrong username or password'})


def logout(request):
    if request.user.is_authenticated:
        user = request.user
        auth.logout(request)
        return render_to_response('login.html',{'login_err':'%s have Loged out' % user} )
    else:
        return HttpResponseRedirect('/')

@login_required
def showDashboard(request):
    #print(caiji.ip_list)
    return render_to_response('base.html',{'user':request.user})



