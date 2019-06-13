#!/bin/bash

read -p "Model name: " model

echo "Scaffolding $model..."

# use Laravel scaffoling command to create:
# * model
# * controller
# * migration
# * provider
{
    php artisan make:model $model -mcr
} || {
    echo "[Error] unable to scaffold model: $model!"
}

# create admin components for crud operations
echo "Scaffold successfull!"