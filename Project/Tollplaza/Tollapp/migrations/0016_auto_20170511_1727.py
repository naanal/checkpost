# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('Tollapp', '0015_auto_20170511_1724'),
    ]

    operations = [
        migrations.AddField(
            model_name='cash_update',
            name='Date',
            field=models.CharField(default=b'NA', max_length=200),
        ),
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 224208)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 228409)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 225264)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 221704)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 229096)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 224729)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 229764)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 225923)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Created_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 222780)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Updated_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 222801)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 27, 9, 227965)),
        ),
    ]
