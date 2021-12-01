from django.shortcuts import render

# Create your views here.

def brand(request):
    return render(request,'setting/brand.html')

def employee_list(request):
    return render(request,'setting/employee_list.html')


def category_list(request):
    return render(request,'setting/category_list.html')