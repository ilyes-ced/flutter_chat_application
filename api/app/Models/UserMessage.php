<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserMessage extends Model
{
    use HasFactory;




    public function sender(){
        return $this->belongsTo(User::class, 'id', 'sender_id');
    }
    public function reciever(){
        return $this->belongsTo(User::class, 'id', 'reciever_id');
    }


    
}
