# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0004_image_for_gallery'),
    ]

    operations = [
        migrations.AddField(
            model_name='video',
            name='for_home',
            field=models.BooleanField(default=False, verbose_name='For home'),
            preserve_default=True,
        ),
    ]
