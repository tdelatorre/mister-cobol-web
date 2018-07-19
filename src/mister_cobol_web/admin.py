from django.contrib import admin
from django.contrib.contenttypes import generic
from solo.admin import SingletonModelAdmin
from .models import *


admin.site.register(Image)
admin.site.register(Video)
admin.site.register(Home, SingletonModelAdmin)
admin.site.register(AboutUs, SingletonModelAdmin)
admin.site.register(Member)
admin.site.register(Tour, SingletonModelAdmin)
admin.site.register(Event)
admin.site.register(Contact, SingletonModelAdmin)
admin.site.register(Audio)
