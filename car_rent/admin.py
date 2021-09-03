from django.contrib import admin
from .models import Cars, Category, PopularCars, Comments

# Register your models here.
admin.site.register(Cars)
admin.site.register(Category)
admin.site.register(PopularCars)
admin.site.register(Comments)
