<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ListeOeuvreController extends Controller
{
    public function liste(){
			return view('listeOeuvre');
		}
}
