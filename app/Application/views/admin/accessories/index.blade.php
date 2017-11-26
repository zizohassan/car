@extends(layoutExtend())

@section('title')
     {{ trans('accessories.accessories') }} {{ trans('home.control') }}
@endsection

@section('style')
    @include('admin.shared.style')
@endsection

@section('content')
    @include(layoutTable() , ['title' => trans('accessories.accessories') , 'model' => 'accessories' , 'table' => $dataTable->table([] , true) ])
@endsection

@section('script')
    @include('admin.shared.scripts')
@endsection