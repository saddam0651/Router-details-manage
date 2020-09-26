from django.urls import path
from .views import RouterDetails
from rest_framework.authtoken.views import obtain_auth_token

# urls
urlpatterns = [
    path('router/', RouterDetails.as_view()),
    path('router/<int:id>/', RouterDetails.as_view()),

    path('api-token-auth/', obtain_auth_token)
]
