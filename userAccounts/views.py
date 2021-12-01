from django.contrib import messages
from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,login,logout
# Create your views here.

def user_login(request):
    if request.method == 'POST':
        user_name = request.POST['userName']
        user_password = request.POST['password']
        user = authenticate(request,username = user_name,password = user_password )
        if user is not None:
            login(request,user)
            #print('login success')
            return redirect('dashboard/')
        
        else:            
            messages.error(request, 'user name or password invaild!')

    return render(request,'login.html')

def user_logout(request):
    logout(request)
    messages.success(request, 'Successfully SignOut !')
    return redirect('user_login')