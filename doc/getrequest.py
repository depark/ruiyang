#-*-coding:utf8 -*-
#使用get请求
#
import httplib2
from datetime import datetime

def pull_data(param):
         http_client = httplib2.HTTPConnectionWithTimeout('127.0.0.1',9000,timeout=5)
         http_client.request('GET',param)
         response = http_client.getresponse()
         httpcontent = response.read().strip()
         print(response.status)
         print(httpcontent)

param = "/test/?username=tony&id=32&time="+str(datetime.now().strftime('%Y-%m-%D %H:%M:%S'))+"&score=443"
pull_data(param)