# README
Friendsgiving App!

* Description:
- Friendsgiving app is designed to simplify planning a holiday dinner menu amongst friends. 

* Core features: 
- Multipule dinner guests can sign into the app, view an up-to-date dinner Menu, see all available and claimed menu items. 
- Click on any indiviual recipe name to see specific details including image, recipe, cooking instructions & ingredients needed. A user can also edit or to removed a recipe here.  
- A users can Sign-in to the app and claim recipes they plan to contribute from the menu. 
- A Signed in user can click on the "My Recipes" tap to display all of the recipes they have claimed.
- The app will gennerate an ingredients list under the "Shopping List" tab that displays all needed recipe ingredients according to the specific recipes a user has selected.
- A user can contribute a new recipe by clicking on the "Add New Recipe" tab and filling out a new recipe form.

* App Challenges:
- A challenge I faced was finding a way to calulate different ingredient mesurements so that a users shopping list could be more specific. For example, it would be nice if instead of just listing "eggs, milk, and corn", the app listed something like "4 eggs, 1.5 cups of milk, and 1 8oz can of corn".
- Another challenge I faced was getting the Image Url to display on the home page. 

* Future Features:
- I would like to implement a "Guest List" tab in the Navbar. The guest list would display a username for everyone invited who was invited to Friendsgiving. Signed in users could see a list of the all the recipes other guests have claimed.


* To get the Friendsgiving App up and running, run:
- bundle install
- rails db:migrate db:seed
- In a new terminal, start the server by running $rails s


* Ruby version: '2.6.1'
