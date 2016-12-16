from django.contrib import *
from django.shortcuts import *
from en.models import *
from captcha.helpers import *
from django.contrib import staticfiles




def index(request):
    if request.method == 'POST':
        form = CaptchaTestForm(request.POST)
        if form.is_valid():
            human = True

            return HttpResponse('welcome')
    else:
        form = CaptchaTestForm()

#    if request.GET['newsn'] == '1':
#        csn = CaptchaStore.generate_key()
#        cimageurl = captcha_image_url(csn)
#        return HttpResponse(cimageurl)

    return  render_to_response('en/index.html',locals())

def pro(request):
    title = u'显示产品'
    p_list = Product.objects.all()
    print('query pro')

    return render_to_response('en/products.html',locals())

def show_pro_detail(request,pid):
    pro = Product.objects.get(id = pid)
    title = pro.name
    img = Images.objects.filter(name_id = pid)


    return render_to_response('en/show_pro.html',locals())