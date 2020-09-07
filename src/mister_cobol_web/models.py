from django.db import models
from django.utils.translation import ugettext_lazy as _
from solo.models import SingletonModel


class Home(SingletonModel):
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
        verbose_name_plural = _(u'Home')


class AboutUs(SingletonModel):
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )

    class Meta:
        verbose_name = _(u'About us')
        verbose_name_plural = _(u'About us')


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
        on_delete = models.CASCADE,
        verbose_name=_(u'Image')
    )
    order = models.SmallIntegerField(
        blank=False, null=False,
        verbose_name=_(u'order')
    )

    class Meta:
        verbose_name = _(u'Member')
        verbose_name_plural = _(u'Members')
        ordering = ['order']

    def __unicode__(self):
        return u'{}'.format(self.name)

    def __str__(self):
        return u'{}'.format(self.name)


class Tour(SingletonModel):
    description = models.TextField(
        blank=False, null=False,
        verbose_name=_(u'Description')
    )
    image = models.ForeignKey('Image',
        blank=True, null=True,
        on_delete = models.CASCADE,
        verbose_name=_(u'Image')
    )

    class Meta:
        verbose_name = _(u'Tour')
        verbose_name_plural = _(u'Tour')


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
    highlighted = models.BooleanField(
        blank=False, null=False,
        default=False,
        verbose_name=_(u'Highlighted')
    )

    class Meta:
        verbose_name = _(u'Event')
        verbose_name_plural = _(u'Events')
        ordering = ['-event_date']

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


class Contact(SingletonModel):
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
    instagram = models.CharField(
        max_length=255, blank=False, null=False,
        verbose_name=_(u'Instagram')
    )
    youtube = models.CharField(
        max_length=255, blank=False, null=False,
        verbose_name=_(u'YouTube')
    )

    class Meta:
        verbose_name = _(u'Contact')
        verbose_name_plural = _(u'Contact')


class Image(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    image = models.ImageField(
        null=False, blank=False,
        default=None, upload_to='images'
    )
    image_th = models.ImageField(
        null=True, blank=True,
        default=None, upload_to='images'
    )
    for_gallery = models.BooleanField(
        blank=False, null=False,
        default=False,
        verbose_name=_(u'For gallery')
    )
    order = models.SmallIntegerField(
        blank=False, null=False,
        verbose_name=_(u'order')
    )

    class Meta:
        verbose_name = _(u'Image')
        verbose_name_plural = _(u'Images')
        ordering = ['order']

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
    order = models.SmallIntegerField(
        blank=False, null=False,
        verbose_name=_(u'order')
    )

    class Meta:
        verbose_name = _(u'Video')
        verbose_name_plural = _(u'Videos')
        ordering = ['order']

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)


class Audio(models.Model):
    title = models.CharField(
        max_length=50, blank=False, null=False,
        verbose_name=_(u'Title')
    )
    audio_file = models.FileField(
        null=False, blank=False,
        default=None, upload_to='files',
        verbose_name=_(u'Audio mp3')
    )

    class Meta:
        verbose_name = _(u'Audio')
        verbose_name_plural = _(u'Audio')
        ordering = ['title']

    def __unicode__(self):
        return u'{}'.format(self.title)

    def __str__(self):
        return u'{}'.format(self.title)
