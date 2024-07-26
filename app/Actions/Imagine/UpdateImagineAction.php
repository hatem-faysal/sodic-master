<?php
namespace App\Actions\Imagine;

use App\Helper\ImageHelper;
use App\Models\Imagine;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class UpdateImagineAction
{
    use ImageHelper;
    public function handle(Imagine $Imagine,array $data): Imagine
    {
        $Imagine->update(Arr::except($data, 'image'));
        $this->UpdateImage($data,$Imagine,'Imagine');
        return $Imagine;
    }
}