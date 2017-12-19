# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0013_auto_20140717_1539'),
    ]

    operations = [
        migrations.AddField(
            model_name='image',
            name='image_th',
            field=models.ImageField(upload_to='images', default=None, null=True, blank=True),
            preserve_default=True,
        ),
    ]
