# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('Tollapp', '0016_auto_20170511_1727'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cash_update',
            name='Direction',
        ),
        migrations.RemoveField(
            model_name='cash_update',
            name='Lane_Number',
        ),
        migrations.AlterField(
            model_name='anpr',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 843343)),
        ),
        migrations.AlterField(
            model_name='axle_count',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 847598)),
        ),
        migrations.AlterField(
            model_name='log_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 844455)),
        ),
        migrations.AlterField(
            model_name='main',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 840804)),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 848296)),
        ),
        migrations.AlterField(
            model_name='officer',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 843911)),
        ),
        migrations.AlterField(
            model_name='ping',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 848953)),
        ),
        migrations.AlterField(
            model_name='sensor_details',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 845128)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Created_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 841926)),
        ),
        migrations.AlterField(
            model_name='signup',
            name='Updated_Time',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 841948)),
        ),
        migrations.AlterField(
            model_name='weigh_bridge',
            name='Timestamp',
            field=models.DateTimeField(default=datetime.datetime(2017, 5, 11, 17, 31, 47, 847161)),
        ),
    ]
