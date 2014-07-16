from django.shortcuts import render
from django.views.generic.base import TemplateView
from .models import *


class LandingView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        home = Home.objects.filter(main_video__for_home=True)
        about_us = AboutUs.objects.all()
        members = Member.objects.all()
        tour = Tour.objects.all()
        events = Event.objects.all()
        images = Image.objects.filter(for_gallery=True)
        video_list = Video.objects.filter(for_home=False)
        contact = Contact.objects.all()

        context = {
            'home': home,
            'about_us': about_us,
            'members': members,
            'tour': tour,
            'events': events,
            'images': images,
            'video_list': video_list,
            'contact': contact,
        }

        return context





