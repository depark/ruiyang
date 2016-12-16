# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-12-15 09:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False, unique=True)),
                ('name', models.CharField(max_length=20, unique=True, verbose_name='菜单名')),
                ('url', models.URLField(default='#', verbose_name='菜单链接')),
                ('time', models.DateTimeField(auto_now=True, verbose_name='创建时间')),
                ('images', models.ImageField(null=True, upload_to='images')),
            ],
            options={
                'verbose_name_plural': '菜单编辑',
                'verbose_name': '菜单生成',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Photo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('image', models.ImageField(null=True, upload_to='products', verbose_name='产品图片')),
            ],
            options={
                'verbose_name_plural': '产品图片',
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='产品名称')),
                ('reduce', models.TextField(verbose_name='产品介绍')),
                ('url', models.URLField(blank=True, max_length=50, null=True, verbose_name='产品链接')),
                ('img', models.ManyToManyField(to='en.Photo')),
            ],
            options={
                'verbose_name_plural': '产品编辑',
                'verbose_name': '产品',
            },
        ),
    ]