from django.urls import path
from .import views
urlpatterns = [
   path('',views.product_list, name='show_products'),
   path('products-assing',views.products_assing, name='assing')
]
