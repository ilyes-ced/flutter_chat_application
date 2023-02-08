<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/url', function(){
    return('hello there');
});


Route::middleware('auth:sanctum')->get('/data', function (Request $request) {
    return '$request->user()';
});


Route::post('/login', function () { return 'wassup'; });
Route::post('/register', function () { return 'wassup'; });
//Route::get('/data', function () { return 'wassup'; });
Route::get('/', function () { return 'wassup'; });