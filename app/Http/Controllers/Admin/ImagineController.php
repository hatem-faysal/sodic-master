<?php
namespace App\Http\Controllers\Admin;

use App\Actions\Cars\StoreCarAction;
use App\Actions\Cars\UpdateCarAction;
use App\Actions\Imagine\StoreImagineAction;
use App\Actions\Imagine\UpdateImagineAction;
use App\Actions\Location\City\StoreCityAction;
use App\Actions\Location\City\UpdateCityAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\Cars\StoreCarRequest;
use App\Http\Requests\Cars\UpdateCarRequest;
use App\Http\Requests\Imagine\StoreImagineRequest;
use App\Http\Requests\Imagine\UpdateImagineRequest;
use App\Http\Requests\Location\City\StoreCityRequest;
use App\Http\Requests\Location\City\UpdateCityRequest;
use App\Models\Cars;
use App\Models\City;
use App\Models\Imagine;
use App\Models\User;
use App\ViewModels\CarsView\CarViewModel;
use App\ViewModels\ImagineView\ImagineViewModel;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;


class ImagineController extends Controller
{
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;


    public function __construct(Imagine $Imagine){
        $this->Model=$Imagine;
        $this->messageStore='Success Add Imagine';
        $this->messageUpdate='Update Imagine';
        $this->messageDelete='Success  Delete Imagine';
        $this->route='admin.imagine.index';
        $this->nameViewCrud='admin.imagine';
        $this->StoreAction=StoreImagineAction::class;
        $this->UpdateAction=UpdateImagineAction::class;
    }

    public function ViewModel($data=null): ImagineViewModel
    {
       $ViewMode = new ImagineViewModel($data);
       return $ViewMode;
    }

    public function index():View
    {
        $data = $this->Model::Search();
        return view($this->nameViewCrud.'.view',$this->ViewModel(),compact('data'));
    }
    public function create():View
    {
        $users = User::all();
        return view($this->nameViewCrud.'.crud',$this->ViewModel(),['users'=>$users]);
    }
    public function store(StoreImagineRequest $request):RedirectResponse
    {
        app($this->StoreAction)->handle($request->validated());
        return redirect()->route('admin.users.index')->with('add',$this->messageStore);
    }
    public function edit($name):View
    {
        $users = User::all();
        $data = $this->Model::where('name',$name)->first();
        return view($this->nameViewCrud.'.crud',$this->ViewModel($data),['users'=>$users]);
    }
    public function update(UpdateImagineRequest $request, $id):RedirectResponse
    {
        $data = $this->Model::find($id);
        app($this->UpdateAction)->handle($data,$request->validated());
        return redirect()->route($this->route)->with('edit',$this->messageUpdate);
    }
    public function destroy($id):RedirectResponse
    {
        $data = $this->Model::find($id);
        $data->delete();
        return redirect()->route($this->route)->with('delete',$this->messageDelete);
    }
}
