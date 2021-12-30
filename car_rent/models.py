from django.contrib.auth.models import User
from django.db import models
from django.utils import timezone
from django.urls import reverse


# Create your models here:
class Category(models.Model):
    category = models.CharField(max_length=50)
    url = models.CharField(max_length=50)

    def __str__(self):
        return 'Category'


class PopularCars(models.Model):
    brand = models.CharField(max_length=50)
    model = models.CharField(max_length=50)
    year = models.CharField(max_length=4)
    site_url = models.CharField(max_length=200, default=None, help_text='index')
    image_url = models.ImageField(blank=True, null=True, default='images/white_img.png', upload_to='images/used/')
    active = models.BooleanField(default=True)

    def __str__(self):
        return 'PopularCars'

    def get_absolute_url(self):
        return reverse('management', kwargs={'pk': self.pk})


class Cars(models.Model):
    id = models.AutoField(primary_key=True)
    brand = models.CharField(max_length=200)
    model = models.CharField(max_length=200)
    year = models.CharField(max_length=20, default=None)
    engine = models.CharField(max_length=200, default=None, help_text='Petrol 2.0l')
    power = models.CharField(max_length=20, default=None, help_text='100 HP')
    price = models.CharField(max_length=20, default=None, help_text='200 zł/day')
    site_url = models.CharField(max_length=200, default=None, help_text='daily')
    active = models.BooleanField(default=True)
    published_date = models.DateTimeField(blank=True, null=True)
    image_url = models.ImageField(blank=True, null=True, default='images/white_img.png', upload_to='images/used/')

    def __str__(self):
        return 'Cars'

    def publish(self):
        self.published_date = timezone.now()

    def get_absolute_url(self):
        return reverse('management', kwargs={'pk': self.pk})


class Comments(models.Model):
    name = models.CharField(max_length=100)
    comment = models.TextField()
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)
    created_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('comments-logged', kwargs={'pk': self.pk})
