# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0012_member_order'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='event',
            options={'ordering': ['-event_date'], 'verbose_name_plural': 'Events', 'verbose_name': 'Event'},
        ),
        migrations.AlterModelOptions(
            name='image',
            options={'ordering': ['order'], 'verbose_name_plural': 'Images', 'verbose_name': 'Image'},
        ),
        migrations.AlterModelOptions(
            name='member',
            options={'ordering': ['order'], 'verbose_name_plural': 'Members', 'verbose_name': 'Member'},
        ),
        migrations.AddField(
            model_name='image',
            name='order',
            field=models.SmallIntegerField(default=1, verbose_name='order'),
            preserve_default=False,
        ),
    ]
