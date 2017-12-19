# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0003_auto_20140715_1532'),
    ]

    operations = [
        migrations.AddField(
            model_name='image',
            name='for_gallery',
            field=models.BooleanField(verbose_name='For gallery', default=False),
            preserve_default=True,
        ),
    ]
