### Rails Inventory System for Portable Franchise.

It is an Open Source Inventory Management System designed primarily to keep track of a Mobile Phone company franchise. It will allow you to keep track of your available resources.

### Project Status
This project is currently in an early alpha stage. Code quality is improving constantly. However, this project is not ready for production yet.

### Installation

`bundle install`

`rake db:create && rake db:migrate && rake db:seed`

`rails s`

This will install all the gem dependencies for you, create a local database, run the database migrations and seed the database with some default items. It will also create an admin and a regular user for you to login as. The credentials for this user are:

**Admin User**
```
username: sheikhhussnain23@gmail.com
password: admin
```
**Regular User**
```
username: 13054119-147@uog.edu.pk
password: changeme
```

If you want to run unit tests you can do so by running the following command:

`bundle exec rspec spec/`

***You might receive an error when trying to upload an image to RIMS. If so make sure you have installed imagemagick.***

Using Homebrew on OSX it's as easy as: `brew install imagemagick`

### Pagination
Pagination is set at 5 items per page. This can be changed in `app/models/item.rb` just look for the line that says: `self.per_page = 5` and change it to whatever number of items you'd like it to be.
