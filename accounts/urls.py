# myapp/urls.py
from django.urls import path, include
# from .views import hello_world
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView, TokenVerifyView
from .views.user import UserCreate, UserInfoView
from .views.company import company_list, company_retrieve, CompanyListCreateView, CompanyListCreateMixinView, CompanyRetrieveDestroyView, CompanyViewSet

router = DefaultRouter()
router.register(r'companies_v4', CompanyViewSet)

urlpatterns = [
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
    path('register/', UserCreate.as_view(), name='create_user'),
    path('userinfo/', UserInfoView.as_view(), name='user_info'),

    path('companies_v1/', company_list, name='company-list'),
    path('companies_v1/<int:company_id>/', company_retrieve, name='company-retrieve'),
    path('companies_v2/', CompanyListCreateView.as_view(), name='company-list-create'),
    path('companies_v3/', CompanyListCreateMixinView.as_view(), name='company-list-create'),
    path('companies_v3/<int:id>/', CompanyRetrieveDestroyView.as_view(), name='company-retrieve-destroy'),
    path('', include(router.urls)),
]