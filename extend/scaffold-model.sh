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
{
    mkdir resources/views/admin/$model
    touch resources/views/admin/$model/index.blade.php resources/views/admin/$model/new.blade.php

    mkdir resources/js/components/$model
    cp resources/js/components/ExampleComponent.vue resources/js/components/$model/List.vue
    cp resources/js/components/ExampleComponent.vue resources/js/components/$model/Edit.vue
    cp resources/js/components/ExampleComponent.vue resources/js/components/$model/New.vue
} || {
    echo "[Error] unable to scaffold model: $model!"
}

echo "Scaffold successfull!"