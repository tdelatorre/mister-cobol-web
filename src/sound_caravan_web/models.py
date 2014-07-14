from django.db import models
from django.utils.translation import ugettext_lazy as _

# Create your models here.

class Home(models.Model):
    main_video_script = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Main Video Script')
    )
    
class AboutUs(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    main_photo_url = models.CharField(max_length=255)
    
class Member(models.Model):
    name = models.CharField(
        max_length=170, blank=False, null=False,
        verbose_name=_(u'Name')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    main_photo_url = models.CharField(max_length=255)
    
class Event(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    location = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Location')
    )
    event_date = models.DateField(
        blank=False, null=False,
        verbose_name=_(u'Event Date')
    )
    event_hour = models.TimeField(
        blank=False, null=False,
        verbose_name=_(u'Event Hour')
    )

class Contact(models.Model):
    address = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Location')
    )
    email1 = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Email1')
    )
    email2 = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Email2')
    )
    phone1 = models.CharField(
        max_length=25, blank=False, null=False,
        verbose_name=_(u'Phone1')
    )
    phone2 = models.CharField(
        max_length=25, blank=False, null=False,
        verbose_name=_(u'Phone2')
    )
    facebook = models.CharField(
        max_length=255, blank=False, null=False,
        verbose_name=_(u'Facebook')
    )
    twitter = models.CharField(
        max_length=255, blank=False, null=False,
        verbose_name=_(u'Twitter')
    )
    myspace = models.CharField(
        max_length=255, blank=False, null=False,
        verbose_name=_(u'Myspace')
    )
