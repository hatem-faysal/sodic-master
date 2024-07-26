<?php

use App\Http\Controllers\MainController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Http\Controllers\TestSurveyController;
use App\Models\Question;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Route::group(
//     [
//         'prefix' => LaravelLocalization::setLocale(),
//         'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
//     ], function(){ //...
//     // start Route


        Route::group(['prefix'=> '/'] ,function(){
            Route::get('/', [MainController::class,'home'])->name('home');
            Route::get('/home',[MainController::class,'home'])->name('home');
            Route::get('/form',[MainController::class,'form'])->name('form');
            Route::post('/store',[MainController::class,'store'])->name('store');
            Route::get('/successful',[MainController::class,'successful'])->name('successful');
            Route::get('/results',[MainController::class,'results'])->name('results');
        });
        

