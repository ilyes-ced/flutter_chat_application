<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\AuthController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\MessageController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/




Route::post('/login', [AuthController::class, 'login' ]);
Route::post('/register', [AuthController::class, 'register' ]);




Route::get('/url', function(){
    return('hello there');
});



Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout' ]);
    Route::post('/add_message', [MessageController::class, 'add_message' ]);

    Route::get('/all_chats', [ChatController::class, 'all_chats' ]);
    Route::get('/init', [ChatController::class, 'init' ]);
    Route::get('/get_messages', [ChatController::class, 'get_messages' ]);
});

Route::middleware('auth:sanctum')->get('/data', function (Request $request) {
    return '$request->user()';
});


//Route::get('/data', function () { return 'wassup'; });
Route::get('/', function () { return 'wassup'; });