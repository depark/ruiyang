# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-12-16 09:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('en', '0005_auto_20161216_1724'),
    ]

    operations = [
        migrations.AlterField(
            model_name='images',
            name='image',
            field=models.ImageField(null=True, upload_to='products', verbose_name='产品图片'),
        ),
    ]