<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Http\Reqponse;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    public function register(Request $request){
        $fields = $request->validate([
            'username' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed',
        ]);

        $user = User::create([
            'username' => $fields['username'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['email']),
        ]);

        $token = $user->createToken('some_secret_token')->plainTextToken;
        log('fezfzef');
        error_log('fezfzef');

        $response= [
            'user' => $user,
            'token' => $token,
        ];

        return response($response, 201);
    }


    public function login(Request $request){

        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

        error_log(json_encode($fields));
        

        $user = User::where('email', $fields['email'])->first();
        if(!$user || !Hash::check($fields['password'], $user->password)){
            return response([
                'message' => 'wrong credentials'
            ], 401);
        }


        $token = $user->createToken('some_secret_token')->plainTextToken;

   

        $response= [
            'user' => $user,
            'token' => $token,
        ];
        //dd($response);
        return response($response, 201);
    }

    


    public function logout(Request $request){
        auth()->user()->tokens()->delete();

        return[
            'message' => 'you have logged out',
        ];
    }
}
