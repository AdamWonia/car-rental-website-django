# Generated by Django 3.2.6 on 2021-08-30 16:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('car_rent', '0009_popularcars_site'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cars',
            old_name='offer',
            new_name='site_url',
        ),
        migrations.RenameField(
            model_name='popularcars',
            old_name='site',
            new_name='site_url',
        ),
    ]
