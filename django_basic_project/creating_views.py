Add a functions in views.py files under the newly created app:
1. import below lines:
  a. from django.shotcuts import render
  b. from django.http import HttpResponse
2. create a basic function that returns a HttpResponse.
eg:
def index(request):
    return HttpResponse("Hello World!!!")
3. Add the respective url under the urls.py file in urlpatterns list under the main project.
step 1: import the views.py file under the app in to urls.py file.
step 2: url(r'^$', views.<functionname>, name=<function_name>)

Finally run the server:
python manage.py runserver(http://127.0.0.1:8000/)
