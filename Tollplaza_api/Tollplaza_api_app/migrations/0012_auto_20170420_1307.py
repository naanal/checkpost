# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings
import datetime


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Tollplaza_api_app', '0011_auto_20170413_1533'),
    ]

    operations = [
        migrations.AddField(
            model_name='signup',
            name='user',
            field=models.ForeignKey(default=1, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 107000)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 117000)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 110000)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 102000)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 117000)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 109000)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 119000)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 111000)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Create_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 105000)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 20, 13, 7, 48, 116000)),
        ),
    ]
