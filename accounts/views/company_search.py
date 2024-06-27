# Create your views here.
# accounts/views.py

from django.shortcuts import get_object_or_404, get_list_or_404
from django.db import connection

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Avg
# from rest_framework.renderers import JSONRenderer

from ..models import Company, Employee
from ..serializers import CompanySerializer, EmployeeSerializer

import logging

logger = logging.getLogger(__name__)

# play some condition usage from django
class QueryPlay(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request, format=None):
        engineers = Employee.objects.select_related("company").filter(position__endswith="Engineer")
        e_serializer = EmployeeSerializer(engineers, many=True)
        avg_market_value = Company.objects.aggregate(Avg("market_value", default=0))
        query_info = {
            "engineer_list": e_serializer.data,
            "avg_market_value": avg_market_value['market_value__avg'],
        }
        return Response(query_info)

# Use select_related to save query of foreigh key related object
class QueryImproveForeign(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request, format=None):
        # engineers = Employee.objects.order_by("name").all()[0:5]
        employees = Employee.objects.select_related("company").order_by("name").all()[0:5]
        e_serializer = EmployeeSerializer(employees, many=True)
        info_list = []
        for e, data in zip(employees, e_serializer.data):
            data["company_name"] = e.company.name
            data["company_market_value"] = e.company.market_value
            info_list.append(data)
        
        return Response(info_list)

# As referenced table by fkey, use prefetch_related to save query 
class QueryImproveReverseForeign(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request, format=None):
        # companies = Company.objects.order_by("id").all()[0:5]
        companies = Company.objects.prefetch_related("employee_set").order_by("id").all()[0:5]
        c_serializer = CompanySerializer(companies, many=True)
        info_list = []
        for c, data in zip(companies, c_serializer.data):
            employees = c.employee_set.all()
            e_serializer = EmployeeSerializer(employees, many=True)
            data["employee_list"] = e_serializer.data
            info_list.append(data)

        return Response(info_list)