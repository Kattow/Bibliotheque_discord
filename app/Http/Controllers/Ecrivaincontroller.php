<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Ecrivaincontroller extends Controller
{
    public function ecrivain(){
			return view('ecrivainDuMois');
		}
}
