from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

from django.urls import path
from .serializers import UserSerializer
from django.contrib.auth.models import User

from rest_framework.permissions import AllowAny
from rest_framework import generics

def hello_world(request):
    print("Hello, World! - This is printed to the console/logs.")
    return HttpResponse("Hello, World!")

class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (AllowAny,)

urlpatterns = [
    # path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
]