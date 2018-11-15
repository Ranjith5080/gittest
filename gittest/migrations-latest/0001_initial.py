# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-09-18 13:17
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CommitteeInfoModel',
            fields=[
                ('committeeid', models.CharField(max_length=9, primary_key=True, serialize=False)),
                ('committeename', models.CharField(max_length=200)),
                ('street1', models.CharField(max_length=34)),
                ('street2', models.CharField(max_length=34)),
                ('city', models.CharField(max_length=30)),
                ('state', models.CharField(max_length=2)),
                ('zipcode', models.IntegerField()),
                ('treasurerlastname', models.CharField(max_length=30)),
                ('treasurerfirstname', models.CharField(max_length=20)),
                ('treasurermiddlename', models.CharField(max_length=20)),
                ('treasurerprefix', models.CharField(max_length=10)),
                ('treasurersuffix', models.CharField(max_length=10)),
                ('created_at', models.DateTimeField()),
                ('modified_at', models.DateTimeField()),
                ('deleted_at', models.DateTimeField()),
                ('isdeleted', models.BooleanField()),
            ],
            options={
                'verbose_name_plural': 'CommitteeInfo',
                'verbose_name': 'CommitteeInfo',
            },
        ),
    ]
