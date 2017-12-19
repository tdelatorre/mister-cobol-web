# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0005_video_for_home'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tour',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, auto_created=True, verbose_name='ID')),
                ('title', models.CharField(max_length=50, verbose_name='Title')),
                ('description', models.TextField(verbose_name='Description')),
                ('image', models.ForeignKey(to='mister_cobol_web.Image', verbose_name='Image')),
            ],
            options={
                'verbose_name_plural': 'Tours',
                'verbose_name': 'Tour',
            },
            bases=(models.Model,),
        ),
    ]
