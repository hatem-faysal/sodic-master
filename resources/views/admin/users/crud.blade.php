@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst($type.' '.$nameView)) }}
@endsection

@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">
    <x-admin.route :route="$RouteIndex" name="{{ TranslationHelper::translate($IndexView) }}"></x-admin.route>
    <!-- container starts -->
    <div class="container-fluid">
        <!-- row -->
        <div class="col-xl-12 col-lg-12">
            <div class="card">
                <x-admin.crud name="{{ $type??'' }} {{ TranslationHelper::translate('Form '.$nameView) }}"></x-admin.crud>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{$action}}" enctype="multipart/form-data">
                            @include('components.admin.csrf')
                            <div class="row">
                                

                                <!-- name_input -->
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Name"></x-admin.form.label-first>
                                    <x-admin.form.input old="name" :value="$user->name" name="name" type="name"
                                        placeholder="Enter your name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter name">
                                    </x-admin.form.label-end>
                                </div>



                                <!-- email -->
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Email"></x-admin.form.label-first>
                                    <x-admin.form.input old="email" :value="$user->email" name="email" type="email"
                                        placeholder="Example@test.com"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter Email">
                                    </x-admin.form.label-end>
                                </div>


                                


                                <!-- phone -->
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="phone"></x-admin.form.label-first>
                                    <x-admin.form.input old="phone" :value="$user->phone" name="phone" type="number"
                                        placeholder="phone"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter phone">
                                    </x-admin.form.label-end>
                                </div>



                                 <!-- message -->
                                 <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="message"></x-admin.form.label-first>
                                    <x-admin.form.input old="message" :value="$user->message" name="message" type="text"
                                        placeholder="message"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter message">
                                    </x-admin.form.label-end>
                                </div>


                            
                   

                                

                               

                                </div>
                            </div>
                                <x-admin.form.submit :route="$RouteIndex"></x-admin.form.submit>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('jsadmin')
@endsection
