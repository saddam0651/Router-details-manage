from django.core.management.base import BaseCommand
from faker import Faker
from route.models import Router

# custom command


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('num', type=int, help='Enter a number')

    def handle(self, *args, **options):
        fake = Faker()
        for i in range(options['num']):
            route = Router.objects.create(
                sapId=fake.msisdn(),
                hostname=fake.hostname(),
                loopback=fake.ipv4(),
                macAddress=fake.hexify(text='^^:^^:^^:^^:^^:^^', upper=True))
            route.save()
        print('Data generated successfully.')
