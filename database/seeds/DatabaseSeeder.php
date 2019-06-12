<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application database.
     * 
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
    }
}