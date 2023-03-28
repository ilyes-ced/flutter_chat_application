<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;



    public function owner(){
        return $this->belongsTo(User::class, 'id', 'owner_id');
    }




}
