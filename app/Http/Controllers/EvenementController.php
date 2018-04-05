<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EvennementController extends Controller
{
    public function evenement(){
        return view('evenement');
    }
}
