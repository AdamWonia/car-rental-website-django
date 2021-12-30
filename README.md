# car-rental-website-django

A website design for a car rental company

The site provides an offer of cars for rent.
It includes daily cars, sports cars and American muscle cars.

It is possible to create a new account or log into existing one.
Logged users have the opportunity to post a comment about the company.
They can add one only comment, which they can edit or delete later.

Administrator after logging in has a possibility of viewing users comments.
He can edit or delete them.

For administrator there is a subpage 'Management' which is visible only for administrator.
On this page, the administrator can add new cars to the offer, view existing offers, edit and delete them (CRUD).

Additionally, he can view, add, edit and delete cars from the most popular group of cars
in the offer that are visible on the home page.



The 'mysql tables' folder contains database tables that can be loaded into your mysql database in order to check
operation and appearance of the page. This tables contain posted comments and details of cars in the offer
and their urls to images in 'media' folder.


Further modifications to the website may include the addition of an online car reservation system
by logged-in users, e.g. via email confirmation, advance payment, etc.
