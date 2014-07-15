from django.contrib import admin
from django.contrib.contenttypes import generic
from .models import *


class ImageAdmin(admin.ModelAdmin):
    model = Image
    list_display = ('title',)


class VideoAdmin(admin.ModelAdmin):
    model = Video
    list_display = ('title',)


admin.site.register(Image, ImageAdmin)
admin.site.register(Video, VideoAdmin)
admin.site.register(Home)
admin.site.register(AboutUs)
admin.site.register(Member)
admin.site.register(Event)
admin.site.register(Contact)
