from django.shortcuts import render

# Create your views here.

def assign_list(request):
    return render(request,'report/product_assing_list.html')