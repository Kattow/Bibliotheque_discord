<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('article/{id}', function ($id) {
    return view('article')->with('id', $id);
})->where('id', '[0-9]+');

Route::get('facture/{n}', function($n) { 
    return view('facture')->withNumero($n); 
})->where('n', '[0-9]+');

Route::get('login/{nom}-{id}', ['as' => 'login', function($nom, $id){
    return "Nom : $nom et id : $id";
}])->where('nom', '[a-z0-9\-]+')->where('id', '[0-9]+');