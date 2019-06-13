#!/bin/bash

echo "Setting up the application..."

# .env file setup
echo "Creating .env file..."

{
    cp ./.env.example ./.env
} || {
    echo "[Error] something went wrong while creating the .env file!"
    exit
}

# installing dependencies via composer
echo "Installing the project's dependencies..."

{
    composer install
} || {
    echo "[Error] something went wrong while installing the project's dependencies!"
    exit 
}

# create database, migrate, and seed
echo "Creating database..."

{
    touch database/database.sqlite
} || {
    echo "[Error] something went wrong while creating the database!"
    exit 
}

echo "Migrating database schema..."

{
    php artisan migrate
} || {
    echo "[Error] something went wrong while migrating the database schema!"
    exit 
}

echo "Seeding the database..."

{
    php artisan db:seed
} || {
    echo "[Error] something went wrong while seeding the database!"
    exit 
}

# Create application encryption key
echo "Creating application encryption key..."

{
    php artisan key:generate
} || {
    echo "[Error] something went wrong while creating the application encryption key!"
    exit 
}

# Set up a new git repo
# Create application encryption key
echo "Setting up a new Git repository..."

{
    rm -rf .git
    git inst
    git add .
    git commit -m "Initialize project with setup script"
} || {
    echo "[Error] something went wrong while setting up a new git repository!"
    exit 
}

echo "Application setup complete!"