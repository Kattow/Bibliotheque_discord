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

//Route racine du site.
Route::get('/', 'PageAccueilController@accueil')->name('home');


//Route sans passer par un controller :
/*Route::get('article/{id}', function ($id) {
    return view('article')->with('id', $id);
})->where('id', '[0-9]+');*/

Route::get('article/{id}', 'ArticleController@show')->where('id', '[0-9]+');

Route::get('facture/{id}', function($id) {
    return view('facture')->with('id', $id);
})->where('n', '[0-9]+');

Route::get('login/{nom}-{id}', ['as' => 'login', function($nom, $id){
    return "Nom : $nom et id : $id";
}])->where('nom', '[a-z0-9\-]+')->where('id', '[0-9]+');

//http://biblio/users
Route::get('users', 'UsersController@create');

Route::post('users', 'UsersController@store');

//http://biblio/contact
Route::get('contact', 'ContactController@create');

//la page d'accueil du site :
Route::get('accueil', 'PageAccueilController@accueil');

//Route::post('contact', 'ContactController@store');

//Route pour accéder à la faq
Route::get('faq', 'FaqController@create');

//Route pour acceder aux annonces
Route::get('annonces', 'AnnoncesController@annonces');

//Route pour acceder aux evenements
Route::get('evenements', 'EvenementController@evenement');

//Route pour acceder a la page ecrivain du mois
Route::get('ecrivaindumois', 'EcrivainController@ecrivain');

//Route pour acceder a la page de connexion
Route::get('connexion', 'ConnexionController@connexion');

//Route pour acceder a la page d'inscription
Route::get('inscription', 'InscriptionController@inscription');

//Route pour acceder a j'ai oublié mon mot de passe
Route::get('oubliemdp', 'OublieMDPController@oublieMDP');

//Route pour acceder a la page liste des oeuvres
Route::get('listeoeuvre', 'ListeOeuvreController@liste');

//Route pour acceder a la page illustration du site
Route::get('illustrations', 'IllustrationsController@illustrations');
