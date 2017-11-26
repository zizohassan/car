@extends(layoutExtend())

@section('title')
     {{ trans('car.car') }} {{ trans('home.control') }}
@endsection

@section('style')
    @include('admin.shared.style')
@endsection

@section('content')
    @include(layoutTable() , ['title' => trans('car.car') , 'model' => 'car' , 'table' => $dataTable->table([] , true) ])
@endsection

@section('script')
    @include('admin.shared.scripts')
@endsection