@extends(layoutExtend())

@section('title')
     {{ trans('regoin.regoin') }} {{ trans('home.control') }}
@endsection

@section('style')
    @include('admin.shared.style')
@endsection

@section('content')
    @include(layoutTable() , ['title' => trans('regoin.regoin') , 'model' => 'regoin' , 'table' => $dataTable->table([] , true) ])
@endsection

@section('script')
    @include('admin.shared.scripts')
@endsection