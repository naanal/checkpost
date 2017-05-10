# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('Tollplaza_api_app', '0009_auto_20170412_1619'),
    ]

    operations = [
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 779000)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 823000)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 789000)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 755000)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 828000)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 784000)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 834000)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 795000)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Create_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 767000)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 4, 12, 17, 5, 37, 819000)),
        ),
    ]
