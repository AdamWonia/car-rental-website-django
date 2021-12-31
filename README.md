
# Car rental website with Django

## Description

This repository contains a website design for a car rental company. The site features a range of cars for hire. It includes dailycars, sports cars and American muscle cars.

It is possible to create a new account or log in to an existing one. Logged users have the possibility to post a comment about the company. They can only add one comment, which they can later edit or delete.

The administrator, after logging in, has the possibility of viewing users' comments. He can edit or delete them. There is a subpage **Management** available for the administrator, which is only visible to him.  On this page, the administrator can add new cars to an offer, view existing offers, edit and delete them (CRUD). Additionally, he can view, add, edit and delete cars from the most popular cars on offer which are visible on the homepage.

## Creating a virtual environment

Open a terminal in your project directory and type the following command:

```bash
python -m venv venv
```
This will create a virtual environment named **venv**. To activate the virtual environment type the following command in your terminal:

```bash
"venv/scripts/activate.bat"
```

Next you have to install all required packages.


## Packages

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install all required packages, which are listed in the **requirements.txt** file. You can use the command below.

```bash
pip install -r requirements.txt
```

## Launch

Use the commands below to start. 

```bash
python manage.py makemigrations
python manage.py migrate
```
A description of these commands is included [here](https://docs.djangoproject.com/en/4.0/topics/migrations/). Next, you need to create an administrator account. To do this use the following command.

```bash
python manage.py createsuperuser
```
You will need this account to add, edit and delete car offers on the site. 

The next step is to start the server so you can open the page in your browser. To do this use the following command.

```bash
python manage.py runserver
```
After this, a url will appear in the terminal where this page will be available. Simply click on it to open the page in your browser. On the main page there is a login button with which you can log in to your administrator account. After this operation, the **Management** subpage will be visible to you. You can also register other users using the register button.

## Closing words

The folder **mysql tables** contains database tables that can be loaded into the mysql database to check operation and appearance of the site. These tables contain posted comments and details of the cars on offer and their URLs to images in the **media** folder.

Further modifications to the website may include the addition of an online car reservation system
by logged-in users, e.g. by e-mail confirmation, advance payment, etc.

I hope you enjoy using it.
