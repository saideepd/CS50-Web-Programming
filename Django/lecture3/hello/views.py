from django.http import HttpResponse
from django.shortcuts import render
import html

# Create your views here.
def index(request):
    return render(request, "hello/index.html")

def saideep(request):
    return HttpResponse("Hello, Saideep!")

def dicholkar(request):
    return HttpResponse("Hello, Mr. Dicholkar!")

def greet(request, name):
    return render(request, "hello/greet.html", {
        "name": html.escape(name.capitalize())
    })