# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0017_auto_20141014_1805'),
    ]

    operations = [
        migrations.AddField(
            model_name='contact',
            name='instagram',
            field=models.CharField(default='https://www.instagram.com/mistercobol/', max_length=255, verbose_name='Instagram'),
            preserve_default=False,
        ),
    ]
