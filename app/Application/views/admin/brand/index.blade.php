@extends(layoutExtend())

@section('title')
     {{ trans('brand.brand') }} {{ trans('home.control') }}
@endsection

@section('style')
    @include('admin.shared.style')
@endsection

@section('content')
    @include(layoutTable() , ['title' => trans('brand.brand') , 'model' => 'brand' , 'table' => $dataTable->table([] , true) ])
@endsection

@section('script')
    @include('admin.shared.scripts')
@endsection