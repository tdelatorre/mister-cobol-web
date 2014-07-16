from django import forms
from django.utils.translation import ugettext_lazy as _


class ContactForm(forms.Form):
    name = forms.CharField(label=_('Name'), max_length=100)
    email = forms.EmailField(label=_('Email'), max_length=150)
    subject = forms.CharField(label=_('Subject'), max_length=200)
    message = forms.CharField(label=_('Message'))
