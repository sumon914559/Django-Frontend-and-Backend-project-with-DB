from django.urls import path
from .import views
urlpatterns = [
    path('',views.brand, name='brand'),
    path('employee-list/',views.employee_list, name='all_employee'),    
    path('category-list/',views.category_list, name='category_list'),
]
