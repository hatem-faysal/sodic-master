@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst(TranslationHelper::translate($nameView))) }}
@endsection
@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">

        <x-admin.route :route="$RouteCreate" name="{{ TranslationHelper::translate($CreateView) }}">
        </x-admin.route>


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
                                            <a href="{{ $RouteCreate }}" class="nav-link active"
                                                id="home-tab" data-bs-target="#BadgesSize" type="button" role="tab"
                                                aria-selected="true">{{ TranslationHelper::translate($type) }}</a>
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
                                                                th3="{{ TranslationHelper::translate('Image') }}"
                                                                th5="{{ TranslationHelper::translate('Created at') }}"
                                                                th6="{{ TranslationHelper::translate('processes') }}">
                                                            </x-admin.table>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @foreach ($data as $key => $item)
                                                        <tr>
                                                            <td class="text-center">{{++$key}}</td>
                                                            <td class="text-center">{{ $item->name }}</td>
                                                            <td class="text-center">
                                                                <x-admin.form.image-view style="100" :model="$item" name="Imagine">
                                                                </x-admin.form.image-view>
                                                            </td>
                                                            

                                                            <td class="text-center">{{ $item->created_at->toFormattedDateString('Y-m-d') }}
                                                            </td>
                                                            <td class="text-center">
                                                                <x-admin.edit
                                                                    :route="route($RouteEdit, $item->name)">
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
                                                                th3="{{ TranslationHelper::translate('Image') }}"
                                                                th5="{{ TranslationHelper::translate('Created at') }}"
                                                                th6="{{ TranslationHelper::translate('processes') }}">
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
