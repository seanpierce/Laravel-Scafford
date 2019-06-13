# Laravel Scaffold Extension

This project is an extension of a basic Laravel installation. It's modified to implement a sqlite database by default. Additionaly, authentication functionality is set up to allow an admin access to a "back end" allowing for the implementation of a simple headless CMS.

## Installation and Usage

```shell
extend/setup.sh
php artisan serve
```

The `extend/setup.sh` script will:

* Create .env file
* Install dependencies
* Create the database, setup the scheema, seed the database an admin login
* Create an application encryption key
* Initialize a new git repository

Then, visit http://localhost:8000/admin to log in.

| Email          | Password | Role  |
|:---------------|:---------|:------|
| admin@site.com | Test123  | Admin |

To create a new model, with all of it's CRUD resources and a vue application for resource management in the admin section, execute the following command:

```shell
extend/scaffold-model.sh
```

The `extend/scaffold-model.sh` script will:

* Execute the built-in resource scaffoling process that ships with a Laravel installation
* Create a Vue.js application with placeholder methods and views for resource managemnt through the admin portal
