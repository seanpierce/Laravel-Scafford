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

echo "Application setup complete!"