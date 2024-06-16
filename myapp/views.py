from django.shortcuts import render,HttpResponse,redirect
from myapp.models import Admin,Addco,Addcontent,Studentreg
from django.contrib.auth import logout
import os,datetime,random

# Create your views here.

def home(request):
    mydata=Addco.objects.all()
    return render(request,'Index.html',{'data':mydata})

def adminlog(request): 
    return render(request,'cpanel/adminlogin.html')

def passreset(request):
    return render(request,'cpanel/passreset.html')

#for view the admins
def adminview(request):
    mydata=Admin.objects.all()
    return render(request,'cpanel/adminview.html',{'data':mydata})

# for Login
def checkadmin(request):
    uname1=request.POST['un']
    pass1=request.POST['pas']   
    found=Admin.objects.filter(username=uname1,password=pass1).first()
    if found:
        request.session['un1']=uname1
        request.session['pas1']=pass1
        return render(request,'cpanel/admindashboard.html')
    else:
        return HttpResponse('Invalid username and password')
  
# Used for logout  
def adlogout(request):
    logout(request)
    return render(request,'cpanel/adlogout.html')

# For reseting the password
def resetpassword(request):
    npass=request.POST['pass1']
    cpass=request.POST['pass2']
    un1=request.session['un1']
    if npass==cpass:
        Admin.objects.filter(username=un1).update(password=npass)
        return render(request,'cpanel/adminlogin.html')
    else:
        return HttpResponse("Password doesnot match")
 
 #to show the addcource in website   
def addcource(request):
    return render(request,'cpanel/addcource.html')
 
 # to add cource in database
def addco(request):
    cource=request.POST['courcen']
    img=request.FILES['finame']    
    Addco(cname=cource,cimg=img).save()
    return render(request,'cpanel/addcource.html')

def viewcource(request):
    mydata1=Addco.objects.all()
    return render(request,'cpanel/viewcource.html',{'data':mydata1})

#use too delete the cource
def delbyid(request,id1):
    data=Addco.objects.filter(id=id1).first()
    if data:
        img_path=data.cimg.path
        os.remove(img_path)
    Addco.objects.get(id=id1).delete()
    return redirect('/viewcource')

def addContent(request):
    mydata1=Addco.objects.all()
    return render(request,'cpanel/addContent.html',{'data':mydata1})

def addcont(request):
    coname=request.POST['sel']
    contitle1=request.POST['title']
    condes1=request.POST['txtarea']
    conlink1=request.POST['vidurl']
    confil1=request.FILES['cofil']
    mydata1=Addco.objects.all()    
    Addcontent(cname=coname,contitle=contitle1,condes=condes1,conlink=conlink1,confile=confil1).save()
    return render(request,'cpanel/addcontent.html',{'data':mydata1})

def viewContent(request):
    mydata1=Addcontent.objects.all()
    return render(request,'cpanel/viewContent.html',{'data':mydata1})

#for deleting the content
def delbyidcon(request,id1):
    data=Addcontent.objects.filter(id=id1).first()
    if data:
        file_path=data.confile.path
        os.remove(file_path)
    Addcontent.objects.get(id=id1).delete()
    return redirect('/viewContent')

def editbyidcon(request,id1):    
   mydata=Addcontent.objects.filter(id=id1).all()
   return render(request,'cpanel/editcontent.html',{'data':mydata})

def editcont(request):
    id1=request.POST['id']
    contitle1=request.POST['title']
    condes1=request.POST['txtarea']
    Addcontent.objects.filter(id=id1).update(contitle=contitle1,condes=condes1)
    return redirect('/viewContent')

#student registration
def student_reg(request):
    return render(request,'student_reg.html')

#student data will save in data base
def studentregdata(request):
    sname1=request.POST['sname']
    sgen1=request.POST['gender']
    sco1=request.POST['cno']
    email1=request.POST['email']
    sadd1=request.POST['sadd']
    date1=datetime.datetime.now()
    cpass1=random.randint(9999,99999)
    simg1=request.FILES['simg']
    Studentreg(sname=sname1,sgen=sgen1,sco=sco1,email=email1,sadd=sadd1,date=date1,cpass=cpass1,simg=simg1).save()
    return render(request,'student_passhow.html',{'sname1':sname1,'email':email1,'cpass':cpass1})


#student login
def student_login(request):
     return render(request,'student_login.html')

def studentlogin(request):
 email=request.POST['email']
 pass1=request.POST['pass1']   
 found=Studentreg.objects.filter(email=email,cpass=pass1).first()
 if found:
        trs=Studentreg.objects.count()
        tcor=Addco.objects.count()
        sname=found.sname
        request.session['email']=email
        request.session['sn1']=sname
        mydata=Addco.objects.all()
        return render(request,"spanel/sdashbord.html",{'trs':trs,'tcor':tcor,'mydata':mydata})
 else:
     return render (request,"student_login.html")
 
 #Admin dashboard
def admindashboard(request):
    trs=Studentreg.objects.count()
    tcor=Addco.objects.count()
    return render(request,'cpanel/admindashboard.html',{'trs':trs,'tcor':tcor})

 #student Id and Passsword will show 
def student_passhow(request):
    return render(request,'student_passhow.html')

# Student password reset field
def spassreset(request):
    return render(request,'spanel/spassreset.html')

def sresetpassword(request):
    npass=request.POST['pas1']
    cpass=request.POST['pas2']
    sn1=request.session['sn1']
    if npass==cpass:
        Studentreg.objects.filter(sname=sn1).update(cpass=npass)
        return render(request,'student_login.html')
    else:
        return HttpResponse("Password doesnot match")
    
def slogout(request):
    logout(request)
    return render(request,'spanel/slogout.html')

def sprofile(request):
    email1=request.session['email']
    mydata1=Studentreg.objects.filter(email=email1).all()
    return render(request,'spanel/sprofile.html',{'data':mydata1})

def viewstudent(request):
    mydata1=Studentreg.objects.all()
    return render(request,'cpanel/viewstudent.html',{'data':mydata1})

def scource(request):    
    mydata=Addco.objects.all()
    return render(request,'spanel/scource.html',{'data':mydata})

def forgotpass(request):
    return render(request,"spanel/sforgotpass.html")

def forgotpassword(request):
    email1=request.POST['email']
    npass=request.POST['pass1']
    cpass=request.POST['pass2']
    found=Studentreg.objects.filter(email=email1).first()
    if found:        
        if npass==cpass:
            Studentreg.objects.filter(email=email1).update(cpass=npass)
            return render(request,"student_login.html")
        else:
            return HttpResponse("Password doesnot match")
    else:
        return HttpResponse("Email ID has not Register")
    
def cdescription(request,cname):
    mydata=Addcontent.objects.filter(cname=cname)
    return render(request,'spanel/cdescription.html',{'data':mydata,'cname':cname})     
    
#Student Dashboard
def sdashbord(request):
    mydata=Addco.objects.all()
    return render(request,'spanel/sdashbord.html',{'data':mydata})

def cousearch(request):
    cname=request.POST['cname']
    mydata=Addcontent.objects.filter(cname=cname)
    return render(request,'spanel/cdescription.html',{'data':mydata,'cname':cname})   

#Contact information page
def contact(request):
    return render(request,'cpanel/contact.html')

def about(request):
    return render(request,'Aboutus.html')


    