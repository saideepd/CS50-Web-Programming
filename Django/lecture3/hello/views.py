from django.http import HttpResponse
from django.shortcuts import render
import html

# Create your views here.
def index(request):
    return HttpResponse("Hello!")

def saideep(request):
    return HttpResponse("Hello, Saideep!")

def dicholkar(request):
    return HttpResponse("Hello, Mr. Dicholkar!")

def greet(request, name):
    return HttpResponse(f"Hello, {html.escape(name.capitalize())}!")