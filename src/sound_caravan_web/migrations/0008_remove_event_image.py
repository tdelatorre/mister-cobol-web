# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0007_member_role'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='event',
            name='image',
        ),
    ]
