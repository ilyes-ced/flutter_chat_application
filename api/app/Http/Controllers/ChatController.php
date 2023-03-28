<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Message;
use Illuminate\Http\Reqponse;


class ChatController extends Controller{


    public function init(Request $request){
        $q1 = Auth()->user()->user_relations_started()->get();
        $q2 = Auth()->user()->user_relations_in()->get();

        foreach ($q1 as $key => $value) {
            error_log($value);
            $qq = Message::where('sender_id', $value->user_id_1)->orWhere('sender_id', $value->user_id_2)->orderBy('id', 'desc')->first();
            $q1->last_message = $qq;
            
            error_log($qq);
        }

        $response= [
            'r' => $q1,
            'rv' => $q2,
            'relations_started' => '',
            'relations_in' => '',
        ];
        //dd($response);
        return response($response, 201);
    }


    public function all_chats(Request $request){

        $response = [
            //'user_messages_sent' => Auth()->user()->user_messages_sent()->get(),
            //'user_messages_recieved' => Auth()->user()->user_messages_recieved()->get(),
            //'user_relations_started' => Auth()->user()->user_relations_started()->get(),
            //'user_relations_in' => Auth()->user()->user_relations_in()->get(),
            //'group_member' => Auth()->user()->group_member()->get(),
            //'invites_sent' => Auth()->user()->invites_sent()->get(),
            //'invites_recieved' => Auth()->user()->invites_recieved()->get(),
            //'messaages' => Message::first(),
            //'group_messages' => Message::first()->group()->get(),
            //'user_messages' => Message::first()->user()->get(),
            'user_messages_sent' => Auth()->user()->user_relations_started()->get(),
            'user_messages_sent2' => Auth()->user()->user_relations_in()->get(),
        ];

        return response($response, 201);
    }

}
