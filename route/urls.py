from django.urls import path
from .views import index, create, update, delete

# url patterns
urlpatterns = [
    # to retrieve all data
    path('', index, name="index"),
    # to create record
    path('create/', create, name="create"),
    # to update record
    path('update/<int:id>/', update, name="update"),
    # to delete record
    path('delete/', delete, name="delete"),
]