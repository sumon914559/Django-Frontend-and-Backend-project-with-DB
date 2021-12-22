from django.shortcuts import render
from .models import Employee,Category
# Create your views here.

def brand(request):
    return render(request,'setting/brand.html')

def employee_list(request):
    emp_list = Employee.objects.all()
    empData = {
        'empInfo': emp_list
    }

    return render(request,'setting/employee_list.html',empData)


def category_list(request):
    categoryList = Category.objects.all()

    cateDate = {
        'categoryInfo' : categoryList
    }

    return render(request,'setting/category_list.html',cateDate)