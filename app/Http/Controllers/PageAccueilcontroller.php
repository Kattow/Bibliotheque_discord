<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PageAccueilcontroller extends Controller
{
    public function accueil(){
        return view('accueil');
    }
}
