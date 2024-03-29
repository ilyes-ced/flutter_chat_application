<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'username',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];







    public function user_messages_sent(){
        return $this->hasMany(Message::class, 'sender_id');
    }
    public function user_messages_recieved(){
        return $this->hasMany(Message::class, 'reciever_id');
    }

    
    public function user_relations_started(){
        return $this->hasMany(UserRelation::class, 'user_id_1');
    }
    public function user_relations_in(){
        return $this->hasMany(UserRelation::class, 'user_id_2');
    }
    public function group_member(){
        return $this->hasMany(GroupMember::class);
    }


    public function invites_sent(){
        return $this->hasMany(Invite::class, 'sender_id');
    }
    public function invites_recieved(){
        return $this->hasMany(Invite::class, 'reciever_id');
    }

    




}
