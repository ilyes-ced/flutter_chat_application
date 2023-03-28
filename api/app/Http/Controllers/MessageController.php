<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Message;
use Illuminate\Http\Reqponse;


class MessageController extends Controller{
    


    public function add_message(Request $request){


        $fields = $request->validate([
            'sender_id' => 'required|int|exists:users,id',
            'reciever_id' => 'required|int|exists:users,id',
            'message' => 'required|string',
            'type' => 'required|string|in:image,text',
            'reciever_type' => 'required|string|in:group,user',
        ]);

        //return $fields;

        $Message = Message::create([
            'sender_id' => $fields['sender_id'],
            'reciever_id' => $fields['reciever_id'],
            'message' => $fields['message'],
            'type' => $fields['type'],
            'reciever_type' => $fields['reciever_type'],
        ]);


        return [
            $request->all(),
            200
        ];
    
    }


}
