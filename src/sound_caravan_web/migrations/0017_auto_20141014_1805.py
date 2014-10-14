# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0016_event_highlighted'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='video',
            options={'ordering': ['order'], 'verbose_name': 'Video', 'verbose_name_plural': 'Videos'},
        ),
        migrations.AddField(
            model_name='video',
            name='order',
            field=models.SmallIntegerField(verbose_name='order', default=1),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='video',
            name='video_script',
            field=models.TextField(verbose_name='Video Script'),
        ),
    ]
