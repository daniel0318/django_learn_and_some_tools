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

import logging

logger = logging.getLogger(__name__)

# version 1: using normal view to build Company
# lack of data validation
def company_list(request):
    companies = get_list_or_404(Company)
    company_list = [
        {
            'id': company.id,
            'name': company.name,
            'founded_date': company.founded_date.isoformat(),
            'market_value': company.market_value,
        } for company in companies
    ]
    return HttpResponse(json.dumps(company_list), content_type='application/json')

def company_retrieve(request, company_id):
    company = get_object_or_404(Company, pk=company_id)
    json_company = {
            'id': company.id,
            'name': company.name,
            'founded_date': company.founded_date,
            'market_value': company.market_value,
    }
    json_company['founded_date'] = json_company['founded_date'].isoformat()

    return HttpResponse(json.dumps(json_company), content_type='application/json')

# version 2: using APIVIEW
class CompanyListCreateView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, format=None):
        companies = Company.objects.all()

        serializer = CompanySerializer(companies, many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        serializer = CompanySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# version 3: using mixin and concrete API views
class CompanyListCreateMixinView(mixins.ListModelMixin,
                        mixins.CreateModelMixin, 
                        generics.GenericAPIView):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer
    permission_classes = [IsAuthenticated]
    
    def get(self, request, *args, **kwargs):
        return self.list(request, *args, **kwargs)
    
    def post(self, request, *args, **kwargs):
        return self.create(request, *args, **kwargs)

class CompanyRetrieveDestroyView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer
    permission_classes = [IsAuthenticated]
    lookup_field = 'id'
    
    def get(self, request, *args, **kwargs):
        return self.retrieve(request, *args, **kwargs)
    
    def put(self, request, *args, **kwargs):
        # print(request.data, file=sys.stderr)
        return self.update(request, *args, **kwargs)
    
    def delete(self, request, *args, **kwargs):
        return self.destroy(request, *args, **kwargs)

# version 4: using modelViewSet
class CompanyViewSet(viewsets.ModelViewSet):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer
    permission_classes = [IsAuthenticated]



# TODO: 
# 1. cache redis read write
# 2. pre_search related_search, many2one, one2one, many2many
# 3. prefix of nameing, Q function, annotate, 

