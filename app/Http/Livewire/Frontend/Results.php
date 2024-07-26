<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Imagine;
use App\Models\User;
use Livewire\Component;

class Results extends Component
{
    public $limitPerPage = 10;
    protected $listeners = [
        'load-more'=>'loadMore'
    ];
    public function loadMore(){
        $this->limitPerPage = $this->limitPerPage + 1;
    }
    public function render()
    {
        $imagines = Imagine::orderBy('id','desc')->latest()->paginate($this->limitPerPage);
        $users = User::all();
        $this->emit('blogStore');
        return view('livewire.frontend.results',['imagines'=>$imagines,'users'=>$users]);
    }
}
