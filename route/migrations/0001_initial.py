# Generated by Django 3.0.4 on 2020-09-26 08:44

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Route',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sapId', models.CharField(max_length=18)),
                ('hostname', models.CharField(max_length=14)),
                ('loopback', models.GenericIPAddressField()),
                ('macAddress', models.CharField(max_length=17)),
            ],
        ),
    ]