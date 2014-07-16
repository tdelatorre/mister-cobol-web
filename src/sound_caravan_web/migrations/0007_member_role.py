# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0006_tour'),
    ]

    operations = [
        migrations.AddField(
            model_name='member',
            name='role',
            field=models.CharField(max_length=100, verbose_name='Role', default=''),
            preserve_default=False,
        ),
    ]
