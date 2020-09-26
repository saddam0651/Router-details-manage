from rest_framework import serializers
from route.models import Router


# serializers


class RouterSerializer(serializers.ModelSerializer):

    class Meta:
        model = Router
        fields = ['id', 'sapId', 'hostname', 'loopback', 'macAddress']
