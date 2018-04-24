<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OublieMDPController extends Controller
{
    public function oublieMDP(){
			return view('oublieMDP');
		}
}
