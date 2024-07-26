<?php

namespace App\Models;

use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Spatie\Permission\Traits\HasRoles;

class Imagine extends Model implements  HasMedia
{
    use  HasRoles, InteractsWithMedia  ;


    protected $table = 'imagines';

    protected $guarded = [];
    
   public function scopeSearch($query):LengthAwarePaginator
   {
        $search = Request()->query('place');
        if(empty($search)){
        return $query->orderBy('id','desc')->paginate(10);
        }else{
        return $query->orderBy('id','desc')->paginate(10);
        }
   }

public function registerMediaConversions(Media $media = null):Void
{
     $this->addMediaConversion('webp')
          ->format('webp') // Set the format to WebP
          // ->quality(80)
          ->optimize() // Optional: Perform image optimization during conversion
          ->performOnCollections('Imagine')
          ->nonQueued();
}

    public function getImage(){
      return  $this->getFirstMediaUrl('Imagine','webp') 
        ? $this->getFirstMediaUrl('Imagine','webp')
        :$this->getFirstMediaUrl('Imagine');
    }
}
