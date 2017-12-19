# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='image',
            name='title',
            field=models.CharField(default='', max_length=50, verbose_name='Title'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='video',
            name='title',
            field=models.CharField(default='', max_length=50, verbose_name='Title'),
            preserve_default=False,
        ),
    ]
