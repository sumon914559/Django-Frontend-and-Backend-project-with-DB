from django.shortcuts import render

# Create your views here.

def product_list(request):
    return render(request,'products/product_list.html')


def products_assing(request):
    return render(request,'products/products_assing.html')