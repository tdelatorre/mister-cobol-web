# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0015_auto_20140718_1104'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='highlighted',
            field=models.BooleanField(verbose_name='Highlighted', default=False),
            preserve_default=True,
        ),
    ]
