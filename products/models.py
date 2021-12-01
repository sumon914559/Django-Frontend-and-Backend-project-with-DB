from django.db import models
from settings.models import Category, Employee

# Create your models here.

class Products(models.Model):
    name        = models.CharField(max_length=200,null=False,blank=False) 
    category    = models.ForeignKey(Category, on_delete=models.CASCADE)  
    seral_no    = models.CharField(max_length=200)
    po_no       = models.CharField(max_length=200)
    price       = models.DecimalField(max_digits=10,decimal_places=2)
    description = models.TextField()
    status      = models.IntegerField()
    create_on   = models.DateTimeField()
   

    def __str__(self):
        return self.name


class Products_assing(models.Model):
    aaf_no                  = models.CharField(max_length=255)
    emp_id                  = models.ForeignKey(Employee, on_delete=models.CASCADE) 
    products_id             = models.ForeignKey(Products, on_delete=models.CASCADE)  
    office_location         = models.CharField(max_length=200)
    asset_code              = models.CharField(max_length=200)
    status                  = models.IntegerField()
    remarks                 = models.TextField()
    assign_date             = models.DateTimeField()
    create_on               = models.DateTimeField()
   
   

    def __str__(self):
        return self.asset_code



