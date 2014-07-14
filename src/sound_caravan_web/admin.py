from django.contrib import admin
from .models import *


class HomeAdmin(admin.ModelAdmin):
    pass

admin.site.register(Home, HomeAdmin)



