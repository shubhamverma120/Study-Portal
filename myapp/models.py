from django.db import models

# Create your models here.

class Admin(models.Model):
    username=models.CharField(max_length=20,primary_key=True)
    password=models.CharField(max_length=20)
    
    class Meta:
        db_table="admin"
        
class Addco(models.Model):
    id=models.AutoField(primary_key=True)
    cname=models.CharField(max_length=20)
    cimg=models.ImageField(upload_to='upload')
    
    class Meta:
        db_table="addcource"
        
class Addcontent(models.Model):
    id=models.AutoField(primary_key=True)
    cname=models.CharField(max_length=30)
    contitle=models.CharField(max_length=50)
    condes=models.CharField(max_length=5000)
    conlink=models.CharField(max_length=30)
    confile=models.FileField(upload_to='upload')
    
    class Meta:
        db_table="addcontent"
        
        
class Studentreg(models.Model):
    id=models.AutoField(primary_key=True)
    sname=models.CharField(max_length=30)
    sgen=models.CharField(max_length=10)
    sco=models.BigIntegerField(max_length=13)
    email=models.CharField(max_length=30)
    sadd=models.CharField(max_length=40)
    date=models.CharField(max_length=30,default='')
    cpass=models.CharField(max_length=30,default='')
    simg=models.FileField(upload_to='upload')
        
    class Meta:
        db_table="studentreg"