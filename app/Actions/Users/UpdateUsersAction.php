<?php
namespace App\Actions\Users;

use App\Helper\ImageHelper;
use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UpdateUsersAction
{
    use ImageHelper;
    public function handle(User $user,array $data): User
    {
       
        $user->update($data);
        
        return $user;
    }
}

