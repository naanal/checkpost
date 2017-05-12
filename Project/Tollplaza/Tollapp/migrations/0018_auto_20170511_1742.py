# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('Tollapp', '0017_auto_20170511_1731'),
    ]

    operations = [
        migrations.AddField(
            model_name='cash_update',
            name='Cash_20',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 292877)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 297264)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 293976)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 290362)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 297976)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 293419)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 298647)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 294662)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Created_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 291508)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Updated_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 291532)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 42, 56, 296817)),
        ),
    ]
