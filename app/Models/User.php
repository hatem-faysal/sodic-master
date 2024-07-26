<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use MatanYadaev\EloquentSpatial\Objects\Point;
use MatanYadaev\EloquentSpatial\Traits\HasSpatial;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable implements  HasMedia
{
    use HasApiTokens, HasFactory, Notifiable, HasSpatial, HasRoles, InteractsWithMedia ;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    
    protected $guarded = [];

   public function scopeSearch($query):LengthAwarePaginator
   {
        $search = Request()->query('name');
        if(empty($search)){
        return $query->orderBy('id','desc')->latest()->paginate(20);
        }else{
        return $query->orderBy('id','desc')->latest()->paginate(20);
        }
   }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'location' => Point::class,
        'email_verified_at' => 'datetime',
    ];
    


    public function answers(){
        return $this->belongsToMany('App\Models\Answer','user_id','answer_id');
    }
}
