from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.utils import timezone
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic import DetailView
from django.db.models import Min

from .models import Category, PopularCars, Cars, Comments


# Create your views here.
class CommentCreate(CreateView):
    model = Comments
    fields = ['name', 'comment']
    template_name = 'car_rent/comments-add.html'
    success_url = reverse_lazy('comments-logged')

    def form_valid(self, form):
        form.instance.created_by = self.request.user

        return super().form_valid(form)


class CommentEdit(UpdateView):
    model = Comments
    fields = ['name', 'comment']
    template_name = 'car_rent/comments-edit.html'
    success_url = reverse_lazy('comments-logged')

    def form_valid(self, form):
        form.instance.created_by = self.request.user

        return super().form_valid(form)


class CommentDelete(DeleteView):
    model = Comments
    template_name = 'car_rent/comments-delete.html'
    success_url = reverse_lazy('comments-logged')


class PopularCarCreate(CreateView):
    model = PopularCars
    fields = '__all__'
    template_name = 'car_rent/pop-car-add.html'
    success_url = reverse_lazy('management')

    def form_valid(self, form):
        return super().form_valid(form)


class PopularCarView(DetailView):
    model = PopularCars
    template_name = 'car_rent/pop-car-view.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context


class PopularCarEdit(UpdateView):
    model = PopularCars
    fields = '__all__'
    template_name = 'car_rent/pop-car-edit.html'
    success_url = reverse_lazy('management')

    def form_valid(self, form):
        return super().form_valid(form)


class PopularCarDelete(DeleteView):
    model = PopularCars
    template_name = 'car_rent/pop-car-delete.html'
    success_url = reverse_lazy('management')


class CarView(DetailView):
    model = Cars
    template_name = 'car_rent/car-view.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context


class CarCreate(CreateView):
    model = Cars
    fields = '__all__'
    template_name = 'car_rent/car-add.html'
    success_url = reverse_lazy('management')

    def form_valid(self, form):
        return super().form_valid(form)


class CarEdit(UpdateView):
    model = Cars
    fields = '__all__'
    template_name = 'car_rent/car-edit.html'
    success_url = reverse_lazy('management')

    def form_valid(self, form):
        return super().form_valid(form)


class CarDelete(DeleteView):
    model = Cars
    template_name = 'car_rent/car-delete.html'
    success_url = reverse_lazy('management')


def index(request):
    categories = Category.objects.all()
    popular_cars = PopularCars.objects.all()
    context = {'categories': categories, 'pop_cars': popular_cars}

    return render(request, 'car_rent/index.html', context)


def cat_daily(request):
    categories = Category.objects.all()
    daily_cars = Cars.objects.all()
    publication_time = timezone.now()
    context = {'categories': categories, 'daily_cars': daily_cars, 'pub_time': publication_time}

    return render(request, 'car_rent/daily-cars.html', context)


def cat_sport(request):
    categories = Category.objects.all()
    sport_cars = Cars.objects.all()
    publication_time = timezone.now()
    context = {'categories': categories, 'sport_cars': sport_cars, 'pub_time': publication_time}

    return render(request, 'car_rent/sports-cars.html', context)


def cat_muscle(request):
    categories = Category.objects.all()
    muscle_cars = Cars.objects.all()
    publication_time = timezone.now()
    context = {'categories': categories, 'muscle_cars': muscle_cars, 'pub_time': publication_time}

    return render(request, 'car_rent/muscle-cars.html', context)


def comments(request):
    categories = Category.objects.all()
    comments_filtered = Comments.objects.filter(created_date__lte=timezone.now()).order_by('created_date')
    amount = Comments.objects.all().count()
    lowest_id = Comments.objects.all().aggregate(Min('id'))
    context = {'categories': categories, 'comments': comments, 'comments_filtered': comments_filtered,
               'amount': range(1, amount),
               'lowest_id': lowest_id}

    return render(request, 'car_rent/comments.html', context)


@login_required(login_url='/comments/')
def comments_logged(request):
    categories = Category.objects.all()
    comments_filtered = Comments.objects.filter(created_date__lte=timezone.now()).order_by('created_date')
    amount = Comments.objects.all().count()
    lowest_id = Comments.objects.all().aggregate(Min('id'))

    dictionary_values = Comments.objects.values('created_by')
    values_list = list(dictionary_values)
    field_values = [d['created_by'] for d in values_list]

    context = {'categories': categories, 'comments': comments, 'comments_filtered': comments_filtered,
               'amount': range(1, amount),
               'lowest_id': lowest_id, 'field_values': field_values}

    return render(request, 'car_rent/comments-logged.html', context)


def register(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('index')
    else:
        form = UserCreationForm()

    return render(request, 'car_rent/register.html', {'form': form})


def login_user(request):
    if request.method == 'POST':
        form = AuthenticationForm(request=request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('index')
            else:
                messages.error(request, "Invalid username or password.")
    else:
        form = AuthenticationForm()

    return render(request, 'car_rent/login.html', {'form': form})


def logout_user(request):
    if request.method == 'POST':
        logout(request)

        return redirect('index')


@login_required(login_url='/')
def management(request):
    popular_cars = PopularCars.objects.all()
    daily_cars = Cars.objects.all()
    sport_cars = Cars.objects.all()
    muscle_cars = Cars.objects.all()
    context = {'daily_cars': daily_cars, 'sport_cars': sport_cars, 'muscle_cars': muscle_cars, 'pop_cars': popular_cars}

    return render(request, 'car_rent/management.html', context)
