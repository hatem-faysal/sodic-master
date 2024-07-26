@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst(TranslationHelper::translate($nameView))) }}
@endsection
@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">
    {{-- <x-admin.route :route="$RouteCreate" name="{{ TranslationHelper::translate($CreateView) }}"> --}}
    {{-- </x-admin.route> --}}
    <!-- container starts -->
    <div class="container-fluid">
        <!-- row -->
        <div class="">
            <div class="demo-view">
                <div class="container-fluid pt-0 ps-0 pe-lg-4 pe-0">
                    <div class="row">
                        <!-- Column starts -->
                        <div class="col-xl-12">
                            <div class="card dz-card" id="accordion-one">
                                <div class="card-header flex-wrap">
                                    <x-admin.basic name="{{ TranslationHelper::translate($nameView) }}"></x-admin.basic>
                                    <x-admin.search :route="$RouteIndex"></x-admin.search>
                                </div>
                                <ul class="nav nav-tabs dzm-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        {{-- <a href="{{ $RouteCreate }}" class="nav-link active"
                                            id="home-tab" data-bs-target="#BadgesSize" type="button" role="tab"
                                            aria-selected="true">{{ TranslationHelper::translate($type) }}</a> --}}
                                    </li>
                                </ul>
                                <!--tab-content-->
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="Preview" role="tabpanel"
                                        aria-labelledby="home-tab">
                                        <div class="card-body pt-0">
                                            <div class="table-responsive ">
                                                <table id="example5" class="display table dataTable no-footer"
                                                    style="min-width: 845px" role="grid">
                                                    <thead>
                                                        <tr style="background-color: #F0F4F9;">
                                                            <x-admin.table th1='#'
                                                                th2="{{ TranslationHelper::translate('Name') }}"
                                                                th3="{{ TranslationHelper::translate('Email') }}"
                                                                th4="{{ TranslationHelper::translate('Social Media') }}"
                                                                th5="{{ TranslationHelper::translate('Social Handle') }}"
                                                                th6="{{ TranslationHelper::translate('Phone') }}"
                                                                th7="{{ TranslationHelper::translate('message') }}"
                                                                th8="{{ TranslationHelper::translate('image') }}"
                                                                th9="{{ TranslationHelper::translate('upload') }}"
                                                                th10="{{ TranslationHelper::translate('Created at') }}"
                                                                th11="{{ TranslationHelper::translate('Actions') }}">

                                                            </x-admin.table>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @foreach ($data as $key => $item)
                                                        <tr>
                                                            <td>{{++$key}}</td>

                                                            <!-- name -->
                                                            <td>
                                                                <x-admin.form.image-upload :model="$item"
                                                                    :nameUser="$item->name" name="user">
                                                                </x-admin.form.image-upload>
                                                            </td>

                                                            <!-- email -->
                                                            <td>{{ $item->email }}</td>
                                                            <td>{{ $item->socialmedia??'' }}</td>
                                                            <td>{{ $item->socialhandle??'' }}</td>
                                                            <!-- phone -->
                                                            <td>{{ $item->phone }}</td>

                                                            <!-- message -->
                                                            <td>{{ $item->message }}</td>

                                                            <!-- image -->
                                                            <td>
                                                               <div class="d-flex align-items-center">
                                                                    @if(null !==($imagines->where('user_id',$item->id)->first()))
                                                                        @if (!empty($imagines->where('user_id',$item->id)->first()->getFirstMediaUrl('Imagine')))
                                                                        <img src="{{ asset($imagines->where('user_id',$item->id)->orderBy('id','DESC')->first()->getFirstMediaUrl('Imagine') )}}" class="rounded-lg me-2" width="{{$style??'50'}}" alt="">
                                                                        @else
                                                                        <img src="{{ asset('admin/images/noimage.jpg') }}" class="rounded-lg me-2" width="{{$style??'50'}}" alt="">
                                                                        @endif
                                                                    @endif
                                                                </div>
                                                                
                                                            </td>



                                                            <!-- upload  -->
                                                            <td > 
                                                                <form  action="{{route('admin.imagine.store')}}" method="post" enctype="multipart/form-data" >
                                                                    @csrf
                                                                    @method('post')
                                                                    <input type="hidden" value="{{$item->id}}" name="user_id">
                                                                    <input type="hidden" value="{{$item->message}}" name="name">
                                                                    <input style="width:120px" type="file" name="image" id="ChooseFile"  required > <br>
                                                                    <input type="submit" value="upload" style="margin-top:3px;width:72%">

                                                                    <!-- <label style="margin-bottom:20px" for="ChooseFile"> <h4> ChooseFile </h4> </label>  <br> -->
                                                                </form>
                                                            </td>
                                                         
                                                            
                                                            <td>{{ $item->created_at? $item->created_at->toFormattedDateString('Y-m-d'):'' }}</td>



                                                            <!-- upload imagine -->
                                                            
                                                              <td>
                                                              

                                                                <x-admin.edit
                                                                    :route="route($RouteEdit, $item->id)">
                                                                </x-admin.edit>
                                                                <x-admin.delete-model :id="$item->id"
                                                                    :name="$item->name"
                                                                    :route="route($RouteDestroy, $item->id)">
                                                                </x-admin.delete-model>
                                                            </td>

                                                        </tr>
                                                        @endforeach
                                                    </tbody>
                                                    <tfoot>
                                                        <tr style="background-color: #F0F4F9;">
                                                            <x-admin.table th1='#'
                                                                th2="{{ TranslationHelper::translate('Name') }}"
                                                                th3="{{ TranslationHelper::translate('Email') }}"
                                                                th4="{{ TranslationHelper::translate('Social Media') }}"
                                                                th5="{{ TranslationHelper::translate('Social Handle') }}"
                                                                th6="{{ TranslationHelper::translate('Phone') }}"
                                                                th7="{{ TranslationHelper::translate('message') }}"
                                                                th8="{{ TranslationHelper::translate('image') }}"
                                                                th9="{{ TranslationHelper::translate('upload') }}"
                                                                th10="{{ TranslationHelper::translate('Created at') }}"
                                                                th11="{{ TranslationHelper::translate('Actions') }}">

                                                            </x-admin.table>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                                {{$data->links()}}
                                            </div>
                                        </div>
                                        <!-- /Default accordion -->
                                    </div>
                                </div>
                                <!--/tab-content-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('jsadmin')
@endsection
