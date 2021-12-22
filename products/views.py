from django.shortcuts import render
from .models import Products
# Create your views here.

def product_list(request):
    productList = Products.objects.select_related('category')

    productData = {
        'prodData': productList
    }

    return render(request,'products/product_list.html',productData)


def products_assing(request):

    return render(request,'products/products_assing.html')