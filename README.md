# Laravel Scaffold Extension

This project is an extension of a basic Laravel installation. It's modified to implement a sqlite database by default. Additionaly, authentication functionality is set up to allow an admin access to a "back end" allowing for the implementation of a simple headless CMS.

## Installation and Usage

```shell
./setup.sh
php artisan serve
```

The `setup.sh` script will:

* Create .env file
* Install dependencies
* Create the database, setup the scheema, seed the database an admin login
* Create an application encryption key
* Initialize a new git repository

Then, visit http://localhost:8000/admin to log in.

| Email          | Password | Role  |
|:---------------|:---------|:------|
| admin@site.com | Test123  | Admin |
