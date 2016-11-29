from celery import task
import time

@task()
def add(name):
    f=open('/tmp/test.txt','a')
    for i in range(20):
        f.write('hello %s:%s \n' % (name,i))
        print('hello %s:%s' % (name,i))
        time.sleep(1)
    f.close()

