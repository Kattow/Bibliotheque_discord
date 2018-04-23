<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class InscriptionController extends Controller
{
    public function inscription(){
			return view('inscription');
		}
}
