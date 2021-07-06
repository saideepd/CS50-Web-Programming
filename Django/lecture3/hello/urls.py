from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("<str:name>", views.greet, name="greet"),
    path("saideep", views.saideep, name="saideep"),
    path("dicholkar", views.dicholkar)
]