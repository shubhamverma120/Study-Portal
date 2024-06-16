from django.urls import path,include
from .import views

urlpatterns = [
    path('',views.home,name="home page"),
    path('adminlog',views.adminlog,name="Admin Login"),
    path('admindashboard',views.admindashboard,name="Admin DashBoard"),
    path('adminview',views.adminview,name="Admin View"),  
    path('checkadmin',views.checkadmin,name="Check Admin"),
    path('adlogout',views.adlogout,name="Admin logout"),    
    path('passreset',views.passreset,name="Admin reset pasword"),  
    path('resetpassword',views.resetpassword,name="check condition to reset the password"), 
    
    # Cource section
    path('addcource',views.addcource,name="Add new Cources"),    
    path('viewcource',views.viewcource,name="View Cource"),
    path('addco',views.addco,name="Add cources in database"),
    path('delbyid/<id1>',views.delbyid,name="Delete cources"), 
    
    #Content Section
    path('addContent',views.addContent,name="Add content"),
    path('addcont',views.addcont,name="Add content in database"),
    
    path('viewContent',views.viewContent,name="View Content"),#view content
    path('delbyidcon/<id1>',views.delbyidcon,name="Delete cources content"),#delete the content
    
    path('editcont',views.editcont,name="To set path of edit content file in project" ),
    path('editbyidcon/<id1>',views.editbyidcon,name="Edit cources Content"),#Edit the content
    
    #student section
    
    #student registtration
    path('student_reg',views.student_reg,name="Student registration page"),
    path('studentregdata',views.studentregdata,name="Student data will save"),
    
    #student login
    path('student_login',views.student_login,name="Student login page"),
    path('studentlogin',views.studentlogin,name='student login task will perform '),
    path('student_passhow',views.student_passhow,name="Student id and pass show"),
    
    #student dashbord
    path('sdashbord',views.sdashbord,name="Student DashBoard"),
    
    # Student password reset
    path('spassreset',views.spassreset,name="Student DashBoard"),
    path('sresetpassword',views.sresetpassword,name="Student password reset"),

    #Student Logout
    path('slogout',views.slogout,name="Admin logout"), 
    
    #student profile
    path('sprofile',views.sprofile,name="Student profile page"),
    
    #View Student
    path('viewstudent',views.viewstudent,name="Student profile page"),
    
    #Student courcce
    path('scource',views.scource,name=" Student Cource view "),
    
    #forgot pass
    path('forgotpass',views.forgotpass,name="Forgot password page"),
    path('forgotpassword',views.forgotpassword,name="Forgot password"),
    
    path('cdescription/<cname>',views.cdescription,name="Show courses in detail"),
    path('cousearch',views.cousearch,name="Search cource"),
    
    #Contact information
    path('contact',views.contact,name="Contact information"),
    
    #About us
    path('about',views.about,name="About our websites")
    
    
    
]
