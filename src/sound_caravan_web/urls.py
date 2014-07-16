from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from .views import LandingView, ContactView
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'sound_caravan_web.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', LandingView.as_view(), name='landing'),
    url(r'^contact/$', ContactView.as_view(), name='contact'),
)



def mediafiles_urlpatterns():
    """
    Method for serve media files with runserver.
    """

    _media_url = settings.MEDIA_URL
    if _media_url.startswith("/"):
        _media_url = _media_url[1:]

    from django.views.static import serve
    return [
        url(r"^%s(?P<path>.*)$" % _media_url, serve,
            {"document_root": settings.MEDIA_ROOT})
    ]


# Static & Media
urlpatterns += staticfiles_urlpatterns()
urlpatterns += mediafiles_urlpatterns()
