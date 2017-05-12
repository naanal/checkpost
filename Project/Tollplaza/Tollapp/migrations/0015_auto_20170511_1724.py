# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('Tollapp', '0014_auto_20170503_1714'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cash_Update',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('User_Name', models.CharField(default=b'NA', max_length=200)),
                ('Lane_Number', models.CharField(default=b'NA', max_length=200)),
                ('Direction', models.CharField(default=b'NA', max_length=200)),
                ('Cash_2000', models.IntegerField(default=0)),
                ('Cash_500', models.IntegerField(default=0)),
                ('Cash_100', models.IntegerField(default=0)),
                ('Cash_50', models.IntegerField(default=0)),
                ('Cash_10', models.IntegerField(default=0)),
                ('Cash_5', models.IntegerField(default=0)),
                ('Type', models.CharField(default=b'NA', max_length=200)),
                ('Total', models.IntegerField(default=0)),
            ],
        ),
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 614371)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 618682)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 615535)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 611890)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 619385)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 614901)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 620048)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 616217)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Created_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 613016)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Updated_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 613039)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 24, 5, 618247)),
        ),
    ]
