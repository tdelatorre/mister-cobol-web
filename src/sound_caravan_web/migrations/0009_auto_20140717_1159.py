# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sound_caravan_web', '0008_remove_event_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='home',
            name='video_mp4',
            field=models.FileField(verbose_name='Video mp4', default=None, upload_to='files'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='home',
            name='video_ogv',
            field=models.FileField(verbose_name='Video ogv', default=None, upload_to='files'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='home',
            name='video_webm',
            field=models.FileField(verbose_name='Video webm', default=None, upload_to='files'),
            preserve_default=True,
        ),
        migrations.RemoveField(
            model_name='home',
            name='main_video',
        ),
    ]
