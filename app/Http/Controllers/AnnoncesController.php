<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AnnoncesController extends Controller
{
    public function annonce(){
        return view('annonces');
    }
}
