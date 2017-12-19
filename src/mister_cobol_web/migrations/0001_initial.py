# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AboutUs',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name='Title')),
                ('description', models.TextField(verbose_name='Description')),
            ],
            options={
                'verbose_name_plural': 'About us',
                'verbose_name': 'About us',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('address', models.TextField(blank=True, verbose_name='Address')),
                ('email1', models.CharField(max_length=50, verbose_name='Email1')),
                ('email2', models.CharField(max_length=50, blank=True, verbose_name='Email2')),
                ('phone1', models.CharField(max_length=25, verbose_name='Phone1')),
                ('phone2', models.CharField(max_length=25, blank=True, verbose_name='Phone2')),
                ('facebook', models.CharField(max_length=255, verbose_name='Facebook')),
                ('twitter', models.CharField(max_length=255, verbose_name='Twitter')),
                ('myspace', models.CharField(max_length=255, verbose_name='MySpace')),
            ],
            options={
                'verbose_name_plural': 'Contacts',
                'verbose_name': 'Contact',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name='Title')),
                ('description', models.TextField(verbose_name='Description')),
                ('location', models.TextField(verbose_name='Location')),
                ('event_date', models.DateField(verbose_name='Event Date')),
                ('event_hour', models.TimeField(verbose_name='Event Hour')),
                ('price', models.CharField(max_length=50, verbose_name='Price')),
            ],
            options={
                'verbose_name_plural': 'Events',
                'verbose_name': 'Event',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Home',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
            ],
            options={
                'verbose_name_plural': 'Homes',
                'verbose_name': 'Home',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Image',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('image', models.ImageField(upload_to=None, default=None)),
            ],
            options={
                'verbose_name_plural': 'Images',
                'verbose_name': 'Image',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='aboutus',
            name='image',
            field=models.ForeignKey(to='mister_cobol_web.Image', verbose_name='Image'),
            preserve_default=True,
        ),
        migrations.CreateModel(
            name='Member',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('name', models.CharField(max_length=100, verbose_name='Name')),
                ('description', models.TextField(verbose_name='Description')),
                ('image', models.ForeignKey(to='mister_cobol_web.Image', verbose_name='Image')),
            ],
            options={
                'verbose_name_plural': 'Members',
                'verbose_name': 'Member',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('video_script', models.TextField(verbose_name='Video Script')),
            ],
            options={
                'verbose_name_plural': 'Videos',
                'verbose_name': 'Video',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='home',
            name='main_video',
            field=models.ForeignKey(to='mister_cobol_web.Video', verbose_name='Main video'),
            preserve_default=True,
        ),
    ]
