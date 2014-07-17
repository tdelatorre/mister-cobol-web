from django.db import models
from django.utils.translation import ugettext_lazy as _


class Home(models.Model):
    video_mp4 = models.FileField(
        null=False, blank=False,
        default=None, upload_to='files',    
        verbose_name=_(u'Video mp4')
    )
    video_ogv = models.FileField(
        null=False, blank=False,
        default=None, upload_to='files',    
        verbose_name=_(u'Video ogv')
    )
    video_webm = models.FileField(
        null=False, blank=False,
        default=None, upload_to='files',
        verbose_name=_(u'Video webm')
    )

    class Meta:
        verbose_name = _(u'Home')
        verbose_name_plural = _(u'Homes')


class AboutUs(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )

    class Meta:
        verbose_name = _(u'About us')
        verbose_name_plural = _(u'About us')

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


class Member(models.Model):
    name = models.CharField(
        max_length=100, blank=False, null=False,
        verbose_name=_(u'Name')
    )
    role = models.CharField(
        max_length=100, blank=False, null=False,
        verbose_name=_(u'Role')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    image = models.ForeignKey('Image',
        blank=False, null=False,
        verbose_name=_(u'Image')
    )

    class Meta:
        verbose_name = _(u'Member')
        verbose_name_plural = _(u'Members')

    def __unicode__(self):
        return u'{}'.format(self.name)

    def __str__(self):
        return u'{}'.format(self.name)


class Tour(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    image = models.ForeignKey('Image',
        blank=False, null=False,
        verbose_name=_(u'Image')
    )

    class Meta:
        verbose_name = _(u'Tour')
        verbose_name_plural = _(u'Tours')

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


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
    price = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Price')
    )

    class Meta:
        verbose_name = _(u'Event')
        verbose_name_plural = _(u'Events')

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


class Contact(models.Model):
    address = models.TextField(
        blank=True, null=False,
        verbose_name=_(u'Address')
    )
    email1 = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Email1')
    )
    email2 = models.CharField(
        max_length=50, blank=True, null=False,
        verbose_name=_(u'Email2')
    )
    phone1 = models.CharField(
        max_length=25, blank=False, null=False,
        verbose_name=_(u'Phone1')
    )
    phone2 = models.CharField(
        max_length=25, blank=True, null=False,
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
        verbose_name=_(u'MySpace')
    )

    class Meta:
        verbose_name = _(u'Contact')
        verbose_name_plural = _(u'Contacts')


class Image(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    image = models.ImageField(
        null=False, blank=False,
        default=None, upload_to='images'
    )
    for_gallery = models.BooleanField(
        blank=False, null=False,
        default=False,
        verbose_name=_(u'For gallery')
    )

    class Meta:
        verbose_name = _(u'Image')
        verbose_name_plural = _(u'Images')

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


class Video(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    video_script = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Video Script')
    )
    for_home = models.BooleanField(
        blank=False, null=False,
        default=False,
        verbose_name=_(u'For home')
    )

    class Meta:
        verbose_name = _(u'Video')
        verbose_name_plural = _(u'Videos')

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)
