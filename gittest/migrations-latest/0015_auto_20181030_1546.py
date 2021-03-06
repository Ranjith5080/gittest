# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-10-30 15:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forms', '0014_committeeinfo_file'),
    ]

    operations = [
        migrations.AlterField(
            model_name='committeeinfo',
            name='file',
            field=models.BinaryField(null=True),
        ),
        migrations.AlterField(
            model_name='committeeinfo',
            name='street2',
            field=models.CharField(max_length=34, null=True),
        ),
        migrations.AlterField(
            model_name='committeeinfo',
            name='treasurermiddlename',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='committeeinfo',
            name='treasurerprefix',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='committeeinfo',
            name='treasurersuffix',
            field=models.CharField(max_length=10, null=True),
        ),
    ]
