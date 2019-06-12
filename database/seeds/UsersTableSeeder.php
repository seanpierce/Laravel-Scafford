<?php

use Illuminate\Database\Seeder;
use App\User as User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->create_admin();
    }

    private function create_admin()
    {
        $user = new User([
            'name' => 'Admin',
            'email' => 'admin@site.com',
            'password' => bcrypt('Test123'),
            // 'is_admin' => true
        ]);

        $user->save();
    }
}