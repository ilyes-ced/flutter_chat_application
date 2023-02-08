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
            'user_id_1' => 1,
            'user_id_2' => 3,
        ]);
        Db::table('user_relations')->insert([
            'user_id_1' => 3,
            'user_id_2' => 2,
        ]);



        Db::table('groups')->insert([
            'name' => 'hello first group',
            'owner' => 1,
        ]);
        Db::table('groups')->insert([
            'name' => 'hello second group',
            'owner' => 1,
        ]);


        

        Db::table('group_members')->insert([
            'group_id' => 1,
            'user_id' => 1,
        ]);
        Db::table('group_members')->insert([
            'group_id' => 1,
            'user_id' => 2,
        ]);
        Db::table('group_members')->insert([
            'group_id' => 1,
            'user_id' => 3,
        ]);
        Db::table('group_members')->insert([
            'group_id' => 2,
            'user_id' => 1,
        ]);
        




        Db::table('group_messages')->insert([
            'user' => 1,
            'message' => 'hello 1',
            'reciever_id' => 1,
        ]);
        Db::table('group_messages')->insert([
            'user' => 2,
            'message' => 'hello 2 user2',
            'reciever_id' => 1,
        ]);
        Db::table('group_messages')->insert([
            'user' => 3,
            'message' => 'hello 1 suser 3',
            'reciever_id' => 1,
        ]);
        Db::table('group_messages')->insert([
            'user' => 1,
            'message' => 'hello 1user 1  ',
            'reciever_id' => 1,
        ]);
        Db::table('group_messages')->insert([
            'user' => 1,
            'message' => 'hello 1user 1  ',
            'reciever_id' => 1,
        ]);

        
        
        Db::table('user_messages')->insert([
            'user' => 1,
            'message' => 'hello 1user 1 to user2',
            'reciever_id' => 2,
        ]);
        Db::table('user_messages')->insert([
            'user' => 2,
            'message' => 'hello 1user 1 to user2',
            'reciever_id' => 1,
        ]);
        Db::table('user_messages')->insert([
            'user' => 3,
            'message' => 'hello 1user 1 to user2',
            'reciever_id' => 1,
        ]);
        
        
        


    }
}
