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
from django.core.cache import cache

from rest_framework.permissions import AllowAny
from rest_framework import generics
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework import generics, mixins, viewsets
from rest_framework.renderers import JSONRenderer

from ..models import Company
from ..serializers import CompanySerializer

import logging
logger = logging.getLogger(__name__)

CACHE_TTL =  300

class CachedCompanyViewSet(viewsets.ViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Company.objects.all()
    serializer_class = CompanySerializer

    def retrieve(self, request, pk, format=None):
        cache_key = f'company_{pk}'
        cached_company = cache.get(cache_key)
        if cached_company:
            company = json.loads(cached_company)
        else:
            company = Company.objects.get(pk=pk)
            # store to cache
            serializer = CompanySerializer(company)
            company_json = JSONRenderer().render(serializer.data)
            cache.set(cache_key, company_json, timeout=CACHE_TTL)
        if not company:
            return Response({'error': 'Company not found'}, status=status.HTTP_404_NOT_FOUND)
        
        serializer = CompanySerializer(company)
        return Response(serializer.data)

    def update(self, request, pk):
        cache_key = f'company_{pk}'
        try:
            company = Company.objects.get(pk=pk)
        except Company.DoesNotExist:
            return Response({'error': 'Company not found'}, status=status.HTTP_404_NOT_FOUND)

        serializer = CompanySerializer(company, data=request.data)
        if serializer.is_valid():
            serializer.save()
            # store to cache
            company_json = JSONRenderer().render(serializer.data)
            cache.set(cache_key, company_json, timeout=CACHE_TTL)
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def destroy(self, request, pk):
        cache_key = f'company_{pk}'
        try:
            company = Company.objects.get(pk=pk)
        except Company.DoesNotExist:
            return Response({'error': 'Company not found'}, status=status.HTTP_404_NOT_FOUND)
        company.delete()
        cache.delete(cache_key)
        return Response(status=status.HTTP_204_NO_CONTENT)

