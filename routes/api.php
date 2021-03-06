<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::resources([
    'user' => 'API\UserController',
    'activity' => 'API\AktivitasController'
]);

Route::post('/listActivity','API\AktivitasController@indexPerUser');

Route::post('/login','API\UserController@login');