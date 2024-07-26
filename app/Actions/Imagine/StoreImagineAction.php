<?php
namespace App\Actions\Imagine;

use App\Helper\ImageHelper;
use App\Models\Imagine;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class StoreImagineAction
{
    use ImageHelper;
    public function handle(array $data): Imagine
    {
        $Imagine = Imagine::create(Arr::except($data, 'image'));
        $this->StoreImage($data,$Imagine,'Imagine');
        
        return $Imagine;
    }
}


