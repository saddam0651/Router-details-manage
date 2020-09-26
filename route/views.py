from django.shortcuts import render
from .models import Router
from django.core.validators import validate_ipv4_address
from django.core.exceptions import ValidationError
import json
from django.http import HttpResponse
import re

# Create your views here.


def is_valid_macaddr802(value):
    allowed = re.compile(r"""
                         (
                             ^([0-9A-F]{2}[-]){5}([0-9A-F]{2})$
                            |^([0-9A-F]{2}[:]){5}([0-9A-F]{2})$
                         )
                         """,
                         re.VERBOSE | re.IGNORECASE)

    if allowed.match(value) is None:
        return False
    else:
        return True


def index(request):
    router = Router.objects.all()
    context = {
        'router': router
    }
    return render(request, 'index.html', context)


def create(request):
    if request.method == 'POST':
        sapid = request.POST['sapid']
        host = request.POST['host']
        loop = request.POST['loop']
        mac = request.POST['mac']

        try:
            validate_ipv4_address(loop)
            # Success
        except ValidationError:
            data = {'message': 'Invalid Loopback !!!'}
            return HttpResponse(
                json.dumps(data), content_type='application/json')

        if not is_valid_macaddr802(mac):
            data = {'message': 'Invalid Mac Address !!!'}
            return HttpResponse(
                json.dumps(data), content_type='application/json')

        route = Router.objects.create(
            sapId=sapid,
            hostname=host,
            loopback=loop,
            macAddress=mac)
        route.save()
        data = {'message': 'Success'}
        return HttpResponse(
            json.dumps(data), content_type='application/json')

    return render(request, 'create.html')


def update(request, id):
    router = Router.objects.get(pk=id)

    if request.method == 'POST':
        sapid = request.POST['sapid']
        host = request.POST['host']
        loop = request.POST['loop']
        mac = request.POST['mac']

        try:
            validate_ipv4_address(loop)
            # Success
        except ValidationError:
            data = {'message': 'Invalid Loopback !!!'}
            return HttpResponse(
                json.dumps(data), content_type='application/json')

        if not is_valid_macaddr802(mac):
            data = {'message': 'Invalid Mac Address !!!'}
            return HttpResponse(
                json.dumps(data), content_type='application/json')

        router.sapId = sapid
        router.hostname = host
        router.loopback = loop
        router.macAddress = mac
        router.save()
        data = {'message': 'Success'}
        return HttpResponse(
            json.dumps(data), content_type='application/json')

    context = {
        'router': router
    }
    return render(request, 'update.html', context)


def delete(request):
    id = request.POST['id']
    Router.objects.get(pk=id).delete()
    return True
