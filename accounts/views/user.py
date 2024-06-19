# Create your views here.
# accounts/views.py

import time
import sys
import json

from django.shortcuts import get_object_or_404, get_list_or_404
from django.contrib.auth.models import User
from django.urls import path
from django.db import connection
from django.http import HttpResponse

from rest_framework.permissions import AllowAny
from rest_framework import generics
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework import generics, mixins, viewsets

from ..models import Company
from ..serializers import CompanySerializer
from ..serializers import UserSerializer

import logging

logger = logging.getLogger(__name__)

class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (AllowAny,)

class UserInfoView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        user = request.user
        data = {
            'username': user.username,
            'email': user.email,
            'fullname': user.get_full_name(),
        }
        return Response(data)
