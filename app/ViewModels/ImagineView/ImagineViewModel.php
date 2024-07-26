<?php
namespace App\ViewModels\ImagineView;
use App\Models\Imagine;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class ImagineViewModel extends ViewModel
{
    public  $Imagine;
    public  $type;
    public  $translation;

// -------name country--------
    public $nameView;
    public $IndexView;
    public $CreateView;
    public $RouteIndex;
    public $RouteCreate;
    public $RouteEdit;
    public $RouteDestroy;
// -------name country--------
    public function __construct($Imagine = null)
    {
        // -------name country--------
        $this->nameView='Imagine';
        $this->IndexView='Index Imagine';
        $this->CreateView='Create Imagine';
        $this->RouteIndex=route('admin.imagine.index');
        $this->RouteCreate=route('admin.imagine.create');
        $this->RouteEdit='admin.imagine.edit';
        $this->RouteDestroy='admin.imagine.destroy';
        // -------name country--------
        $this->Imagine = is_null($Imagine) ? new Imagine(old()) : $Imagine;
        $this->type = is_null($Imagine)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
    }

    public function action(): string
    {
        return is_null($this->Imagine->id)
            ? route('admin.imagine.store')
            : route('admin.imagine.update', $this->Imagine->id);
    }

    public function method(): string
    {
        return is_null($this->Imagine->id) ? 'POST' : 'PUT';
    }
}
