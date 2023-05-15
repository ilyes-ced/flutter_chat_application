<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Message;
use Illuminate\Http\Reqponse;


class ChatController extends Controller{
    


    public function get_messages(Request $request){

        $res = Message::where('type', $request->type)
                ->where('reciever_id', $request->reciever_id)
                ->orderBy('id', 'desc')
                ->limit($request->limit)->offset($request->offset)
                ->orderBy('id', 'asc')
                ->get();

        return [
            $res,
            $request->all(),
            200
        ];
    
    }

    public function init_chats(Request $request){
        $query1 = Auth()->user()->user_relations_started()->get();
        $query2 = Auth()->user()->user_relations_in()->get();

        foreach ($query1 as $key => $value) {
            $chat_data = Message::where('sender_id', $value->user_id_1)->orWhere('sender_id', $value->user_id_2)->orderBy('id', 'desc')->first();
            $contact_data = User::where('id', $value->user_id_2)->get(['username', 'profile_image', 'is_active', 'last_active']);
            $query1[$key]['last_message'] = $chat_data;
            $query1[$key]['contact_data'] = $contact_data;
        }
        foreach ($query2 as $key => $value) {
            $chat_data = Message::where('sender_id', $value->user_id_1)->orWhere('sender_id', $value->user_id_2)->orderBy('id', 'desc')->first();
            $contact_data = User::where('id', $value->user_id_1)->get(['username', 'profile_image', 'is_active', 'last_active']);
            $query2[$key]['last_message'] = $chat_data;
            $query2[$key]['contact_data'] = $contact_data;
        }

        $query1 = $query1->merge($query2);

        // to sort chats by the latest message
        // chat with latest message is first
        $sorted = $query1->sortBy(function ($queries) {
            return $queries->last_message->created_at;
        });

        return response($sorted, 201);
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
