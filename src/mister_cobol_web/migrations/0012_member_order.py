# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0011_auto_20140717_1235'),
    ]

    operations = [
        migrations.AddField(
            model_name='member',
            name='order',
            field=models.SmallIntegerField(default=1, verbose_name='order'),
            preserve_default=False,
        ),
    ]
