<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use Illuminate\Support\Facades\Hash;


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
        ]);   
        Db::table('users')->insert([
            'username' => 'ahmed',
            'email' => 'ahmed@gmail.com',
            'password' => Hash::make('11062001'),
        ]);
        Db::table('users')->insert([
            'username' => 'ali',
            'email' => 'ali@gmail.com',
            'password' => Hash::make('11062001'),
        ]);






        Db::table('user_relations')->insert([
            'user_id_1' => 1,
            'user_id_2' => 2,
        ]);

        Db::table('user_relations')->insert([
            'user_id_1' => 3,
            'user_id_2' => 2,
        ]);
        Db::table('user_relations')->insert([
            'user_id_1' => 3,
            'user_id_2' => 1,
        ]);



        Db::table('groups')->insert([
            'name' => 'hello first group',
            'owner_id' => 1,
        ]);
        Db::table('groups')->insert([
            'name' => 'hello second group',
            'owner_id' => 1,
        ]);


        





        Db::table('messages')->insert([
            'sender_id' => 1,
            'reciever_id' => 1,
            'message' => 'hello 1',
            'type' => 'text',
            'reciever_type' => 'group',
        ]);
        Db::table('messages')->insert([
            'sender_id' => 2,
            'reciever_id' => 1,
            'message' => 'hello 2 user2',
            'type' => 'text',
            'reciever_type' => 'group',
        ]);
        Db::table('messages')->insert([
            'sender_id' => 3,
            'reciever_id' => 1,
            'message' => 'hello 1 suser 3',
            'type' => 'text',
            'reciever_type' => 'group',
        ]);
        Db::table('messages')->insert([
            'sender_id' => 1,
            'reciever_id' => 2,
            'message' => 'hello 1user 1  ',
            'type' => 'text',
            'reciever_type' => 'user',
        ]);
        Db::table('messages')->insert([
            'sender_id' => 1,
            'reciever_id' => 2,
            'message' => 'hello 1user 1  ',
            'type' => 'text',
            'reciever_type' => 'user',
        ]);

        
        
    
        
        


    }
}
