
from django.urls import path
from django.urls.conf import re_path
from .import views

urlpatterns = [
    path('',views.assign_list, name='assigned_list'),

    path('details/',views.pdf_view, name='details')

    #path('<int:album_id>/', views.pdf_view, name='details'),
    #path(r'^details/(?P<emp_id>\d+)/$', views.pdf_view, name='details')
    
    #path('details/(?<slug>[\w-]+)/$',views.pdf_view, name='details')
    #path('details/(?P<item_id>[0-9]*)',views.pdf_view,name='details')
    #path(r'^$',views.pdf_view, name='details') 
   
]
