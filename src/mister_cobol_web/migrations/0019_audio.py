# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mister_cobol_web', '0018_contact_instagram'),
    ]

    operations = [
        migrations.CreateModel(
            name='Audio',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('title', models.CharField(verbose_name='Title', max_length=50)),
                ('audio_file', models.FileField(verbose_name='Audio mp3', upload_to='files', default=None)),
            ],
            options={
                'ordering': ['title'],
                'verbose_name': 'Audio',
                'verbose_name_plural': 'Audio',
            },
            bases=(models.Model,),
        ),
    ]
