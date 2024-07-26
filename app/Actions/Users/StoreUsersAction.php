<?php
namespace App\Actions\Users;

use App\Helper\ImageHelper;
use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class StoreUsersAction
{
    use ImageHelper;
    public function handle(array $data): User
    {
        $user = User::create($data);
        return $user;
    }
}

