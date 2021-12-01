from django.db import models
from django.db.models.base import Model

# Create your models here.

class Employee(models.Model):
    name = models.CharField(max_length=255,null=False,blank=False)
    office_id = models.CharField(max_length=100,null=False,blank=False)
    designation = models.CharField(max_length=100,null=False,blank=False)
    mobile_no = models.CharField(max_length=20,null=False,blank=False)
    create_on = models.DateTimeField()
    

    def __str__(self):
        return self.name

class Category(models.Model):
     name = models.CharField(max_length=255,null=False,blank=False)

     def __str__(self):
         return self.name