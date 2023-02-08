<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\UserMessage;
use Illuminate\Http\Reqponse;


class ChatController extends Controller{

    public function all_chats(Request $request){

        $response = [
            'dd' => User::where('id', 1)->first()->user_messages_sent(),
            'user_messages_sent' => Auth()->user()->user_messages_sent(),
            'user_messages_recieved' => Auth()->user()->user_messages_recieved(),
            'group_messages' => Auth()->user()->group_messages(),
            'user_relations_started' => Auth()->user()->user_relations_started(),
            'user_relations_in' => Auth()->user()->user_relations_in(),
            'group_member' => Auth()->user()->group_member(),
            'invites_sent' => Auth()->user()->invites_sent(),
            'invites_recieved' => Auth()->user()->invites_recieved(),
            'messages' => UserMessage::find(2)->sender(),
        ];

        return response($response, 201);
    }

}
