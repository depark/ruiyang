# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-03-05 07:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('en', '0005_auto_20180305_1512'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='top',
            field=models.BooleanField(default=0, verbose_name=b'\xe6\x98\xaf\xe5\x90\xa6\xe7\xbd\xae\xe9\xa1\xb6'),
        ),
    ]
