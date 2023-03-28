<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;



    public function sender(){
        return $this->belongsTo(User::class);
    }

    public function group(){
        return $this->belongsTo(Group::class, 'reciever_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'reciever_id');
    }

    
}
