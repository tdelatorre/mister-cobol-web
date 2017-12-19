# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0009_auto_20140717_1159'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='contact',
            options={'verbose_name': 'Contact', 'verbose_name_plural': 'Contact'},
        ),
        migrations.AlterModelOptions(
            name='home',
            options={'verbose_name': 'Home', 'verbose_name_plural': 'Home'},
        ),
        migrations.AlterModelOptions(
            name='tour',
            options={'verbose_name': 'Tour', 'verbose_name_plural': 'Tour'},
        ),
        migrations.AlterModelOptions(
            name='video',
            options={'verbose_name': 'Video', 'verbose_name_plural': 'Video'},
        ),
        migrations.RemoveField(
            model_name='aboutus',
            name='title',
        ),
        migrations.RemoveField(
            model_name='tour',
            name='title',
        ),
        migrations.RemoveField(
            model_name='video',
            name='for_home',
        ),
        migrations.AlterField(
            model_name='video',
            name='video_script',
            field=models.TextField(verbose_name='Video List Script'),
        ),
    ]
