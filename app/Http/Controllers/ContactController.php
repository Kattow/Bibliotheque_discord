<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ContactRequest;
use Illuminate\Support\Facades\Mail;
use App\Mail\Contact;

class ContactController extends Controller
{
    public function create(){
        return view('contact');
    }

    public function store(ContactRequest $request){
        Mail::to('kattowkattow@gmail.com')
            ->send(new Contact($request->except('_token')));
        return view('confirm');
    }
}
