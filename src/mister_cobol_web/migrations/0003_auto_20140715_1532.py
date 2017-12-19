# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0002_auto_20140715_0925'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='image',
            field=models.ForeignKey(verbose_name='Image', to='mister_cobol_web.Image', default=''),
            preserve_default=False,
        ),
        migrations.RemoveField(
            model_name='aboutus',
            name='image',
        ),
        migrations.AlterField(
            model_name='image',
            name='image',
            field=models.ImageField(upload_to='images', default=None),
        ),
    ]
