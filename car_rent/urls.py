from django.contrib.auth.decorators import login_required
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('daily-cars/', views.cat_daily, name='daily-cars'),
    path('sports-cars/', views.cat_sport, name='sports-cars'),
    path('muscle-cars/', views.cat_muscle, name='muscle-cars'),
    path('register/', views.register, name='register'),
    path('login/', views.login_user, name='login'),
    path('logout/', views.logout_user, name='logout'),

    path('comments-log/', views.comments_logged, name='comments-logged'),
    path('comments/', views.comments, name='comments'),
    path('comments-log/add/<int:pk>/', login_required(views.CommentCreate.as_view()), name='comments-add'),
    path('comments-log/edit/<int:pk>/', login_required(views.CommentEdit.as_view()), name='comments-edit'),
    path('comments-log/delete/<int:pk>/', login_required(views.CommentDelete.as_view()), name='comments-delete'),

    path('management/', views.management, name='management'),
    path('management/car/add/', login_required(views.CarCreate.as_view()), name='car-add'),
    path('management/car/view/<int:pk>/', login_required(views.CarView.as_view()), name='car-view'),
    path('management/car/edit/<int:pk>/', login_required(views.CarEdit.as_view()), name='car-edit'),
    path('management/car/delete/<int:pk>/', login_required(views.CarDelete.as_view()), name='car-delete'),

    path('management/pop-car/add/', login_required(views.PopularCarCreate.as_view()), name='pop-car-add'),
    path('management/pop-car/view/<int:pk>/', login_required(views.PopularCarView.as_view()), name='pop-car-view'),
    path('management/pop-car/edit/<int:pk>/', login_required(views.PopularCarEdit.as_view()), name='pop-car-edit'),
    path('management/pop-car/delete/<int:pk>/', login_required(views.PopularCarDelete.as_view()),
         name='pop-car-delete'),
]
