<?php

namespace App\Http\Controllers;

use App\Http\Requests\Frontend\ImagenRequest;
use App\Models\Imagine;
use App\Models\User;
use Illuminate\Http\Request;

class MainController extends Controller
{



    public function home(){
        return view('frontend.home');
    }


    public function form(){
        return view('frontend.form');
    }



    public function successful(){
        return view('frontend.successful');
    }



    public function store(ImagenRequest $request){
        // create user in DB
        // ImagenRequest
        dd('sad');
        User::create($request->validated());
        // redirect to successful page
        return redirect()->route('successful');
    }



    public function results(){
        // $imagines = Imagine::orderBy('id','desc')->get();
        // $users = User::all();
        // return view('frontend.results',['imagines'=>$imagines,'users'=>$users]);
        return view('frontend.results');
    }


}
