@extends(layoutExtend())

@section('title')
     {{ trans('country.country') }} {{ trans('home.control') }}
@endsection

@section('style')
    @include('admin.shared.style')
@endsection

@section('content')
    @include(layoutTable() , ['title' => trans('country.country') , 'model' => 'country' , 'table' => $dataTable->table([] , true) ])
@endsection

@section('script')
    @include('admin.shared.scripts')
@endsection