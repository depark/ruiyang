# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-12-21 04:31
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('en', '0007_auto_20161221_1227'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='image',
            field=models.ImageField(null=True, upload_to='products', verbose_name='产品图片'),
        ),
    ]