<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        


        Db::table('users')->insert([
            'username' => 'ilyes',
            'email' => 'ilyes@gmail.com',
            'password' => Hash::make('11062001'),
            'profile_image' => 'phantom_rtx3090.png'
        ]);   
        Db::table('users')->insert([
            'username' => 'ahmed',
            'email' => 'ahmed@gmail.com',
            'password' => Hash::make('11062001'),
            'profile_image' => 'msi_rtx3050.png'
        ]);
        Db::table('users')->insert([
            'username' => 'ali',
            'email' => 'ali@gmail.com',
            'password' => Hash::make('11062001'),
            'profile_image' => 'iphone_red.jpg'
        ]);




        Db::table('user_relations')->insert([
            'username' => 'ali',
            'email' => 'ali@gmail.com',
            'password' => Hash::make('11062001'),
            'profile_image' => 'iphone_red.jpg'
        ]);










    }
}
