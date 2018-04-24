<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IllustrationsController extends Controller
{
    public function illustrations(){
			return view('illustrations');
		}
}
