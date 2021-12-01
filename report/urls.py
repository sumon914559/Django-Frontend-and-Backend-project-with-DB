from django.urls import path
from .import views
urlpatterns = [
    path('',views.assign_list, name='assigned_list')
]
