# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0014_image_image_th'),
    ]

    operations = [
        migrations.AddField(
            model_name='contact',
            name='youtube',
            field=models.CharField(verbose_name='YouTube', default='', max_length=255),
            preserve_default=False,
        ),
        migrations.RemoveField(
            model_name='contact',
            name='myspace',
        ),
    ]
