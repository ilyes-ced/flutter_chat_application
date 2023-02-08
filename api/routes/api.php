<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\AuthController;

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
    
    Route::get('/all_chats', [AuthController::class, 'logout' ]);
    
});

Route::middleware('auth:sanctum')->get('/data', function (Request $request) {
    return '$request->user()';
});


//Route::get('/data', function () { return 'wassup'; });
Route::get('/', function () { return 'wassup'; });