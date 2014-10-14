from django.shortcuts import render
from django.views.generic.base import TemplateView
from .models import *
from django.views.generic import View
from django.http import HttpResponse, HttpResponseBadRequest
from django.core.mail import send_mail
from django.conf import settings


import json

from .forms import ContactForm


class LandingView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        members = Member.objects.all()
        events = Event.objects.all()
        images = Image.objects.filter(for_gallery=True)
        videos = Video.objects.all()

        context = super().get_context_data(**kwargs)
        context.update({
            'members': members,
            'events': events,
            'images': images,
            'videos': videos,
            'form': ContactForm(),
        })
        return context


class ContactView(View):
    def post(self, request):
        form = ContactForm(request.POST)
        if form.is_valid():
            message = "Contact from: {}\n\n".format(form.cleaned_data['name'])
            message += "With email: {}\n\n".format(form.cleaned_data['email'])
            message += "Subject: {}\n\n".format(form.cleaned_data['subject'])
            message += "Message:\n{}\n".format(form.cleaned_data['message'])

            send_mail("Contact from the web", message, "web@sound-caravan-web", [settings.CONTACT_EMAILS_DESTIONATION], fail_silently=True)

            return HttpResponse(json.dumps({"success": True}), content_type='application/json')

        return HttpResponseBadRequest(json.dumps(form.errors), content_type='application/json')
