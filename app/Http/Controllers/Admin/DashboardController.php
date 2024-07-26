<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Answer;
use App\Models\Imagine;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class DashboardController extends Controller
{
    public function index()
    {
        $countUsersUploadImage = Imagine::get()->unique('user_id')->count();
        $countUser = User::count();
        $countDailyUser = User::where('created_at', '>', Carbon::now()->subDay())->count();
        return view('admin.dashboard',compact('countUser','countDailyUser','countUsersUploadImage'));
    }
}
