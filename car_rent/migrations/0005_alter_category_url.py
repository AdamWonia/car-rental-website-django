# Generated by Django 3.2.6 on 2021-08-29 19:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('car_rent', '0004_rename_author_comments_created_by'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='url',
            field=models.CharField(max_length=50),
        ),
    ]
