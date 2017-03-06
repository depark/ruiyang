# -*- coding: UTF-8 -*-

"""
Django settings for ruiyang project.

Generated by 'django-admin startproject' using Django 1.10.

For more information on this file, see
https://docs.djangoproject.com/en/1.10/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.10/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.10/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '(wx1)sus)cue=d^y77qnta&ae2uq)#d*%)38a&$h3915!o5375'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['10.16.220.124','127.0.0.1']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'nested_inline',
    'en',
    'DjangoUeditor',
]
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
  #  'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',

]

ROOT_URLCONF = 'ruiyang.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,'templates'),os.path.join(BASE_DIR,'upload')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',

            ],
        },
    },
]

WSGI_APPLICATION = 'ruiyang.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.10/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'ruiyang',
        'USER':'root',
        'PASSWORD':'root',
        'HOST':'127.0.0.1',
        'PORT':'3306',
    }
}


# Password validation
# https://docs.djangoproject.com/en/1.10/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


LOGGING = {
    'version':1,
    'disable_existing_loggers':True,
    'formatters':{
        'standard':{
            'format':'%(levelname)s %(asctime)s %(message)s'
        },
        'verbose':{
            'format': '%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s'
        },
    },
    'filters':{
    },
     'handlers':{
         'mail_admins':{
             'level':'ERROR',
             'class': 'django.utils.log.AdminEmailHandler',
             'formatter':'standard',
             'include_html':True,
         },
         'default':{
             'level':'INFO',
             'class':'logging.handlers.RotatingFileHandler',
            'filename':os.path.join(BASE_DIR+'/log/','all.log'),
            'formatter':'standard',
         },
         'console': {
             'level': 'DEBUG',
             'class': 'logging.StreamHandler',
             'formatter':'standard',
         },
         'request_handler':{
             'level':'DEBUG',
             'class':'logging.handlers.RotatingFileHandler',
             'filename':os.path.join(BASE_DIR+'/log/','script.log'),
             'maxBytes':1024*1024*5,
             'formatter':'standard',
         },
     },
    'loggers': {
        'django.request': {
            'handlers': ['request_handler'],
            'level': 'DEBUG',
            'propagate': False,
        },
        'django':{
            'handlers': ['default','console'],
            'level': 'INFO',
            'propagate': False
        },
        'script':{
            'handlers': ['request_handler'],
            'level': 'INFO',
            'propagate': False
        },
    },
}



# Internationalization
# https://docs.djangoproject.com/en/1.10/topics/i18n/

LANGUAGE_CODE = 'en'
#LANGUAGE_CODE = 'zh-cn'

TIME_ZONE = 'UTC'

USE_I18N = True
USE_L10N = True

USE_TZ = True

LANGUAGES = (
    ('en', ('English')),
    ('zh_hans', ('中文简体')),
    ('zh_hant', ('中文繁體')),
)
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.10/howto/static-files/



STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR,'static')
STATICFILES_DIRS = (
    ('css',os.path.join(STATIC_ROOT,'css')),
    ('js',os.path.join(STATIC_ROOT,'js')),
    ('images',os.path.join(STATIC_ROOT,'images')),
    ('fonts', os.path.join(STATIC_ROOT, 'fonts')),
)
LOCALE_PATHS = (os.path.join(BASE_DIR,'local'),)

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',


)

MEDIA_URL = '/upload/'
MEDIA_ROOT = os.path.join(BASE_DIR,'upload').replace('\\','/')

TIME_ZONE="Asia/Shanghai"
