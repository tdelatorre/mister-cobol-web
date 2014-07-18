from django import forms
from django.utils.translation import ugettext_lazy as _


class ContactForm(forms.Form):
    name = forms.CharField(label=_('Nombre'), max_length=100)
    email = forms.EmailField(label=_('E-mail'), max_length=150)
    subject = forms.CharField(label=_('Asunto'), max_length=200)
    message = forms.CharField(label=_('Mensaje'), widget=forms.Textarea)
