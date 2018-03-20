# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-03-05 07:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('en', '0002_auto_20180305_1420'),
    ]

    operations = [
        migrations.AddField(
            model_name='advantage',
            name='image',
            field=models.ImageField(blank=True, upload_to=b'advantage', verbose_name=b'\xe5\x9b\xbe\xe6\xa0\x87'),
        ),
        migrations.AddField(
            model_name='news',
            name='picture',
            field=models.ImageField(default=b'upload/timg.jpeg', upload_to=b'top', verbose_name=b'\xe6\x96\xb0\xe9\x97\xbb\xe7\xbd\xae\xe9\xa1\xb6\xe5\x9b\xbe\xe7\x89\x87'),
        ),
        migrations.AddField(
            model_name='news',
            name='top',
            field=models.BooleanField(default=False),
        ),
    ]
