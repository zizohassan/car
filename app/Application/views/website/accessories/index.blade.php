@extends('layouts.app')

@section('title')
    {{ trans('accessories.accessories') }} {{ trans('home.control') }}
@endsection

@section('content')
    <div class="container">
        <div><h1>{{ trans('website.accessories') }}</h1></div>
        <table class="table table-responsive table-striped table-bordered">
            <thead>
            <tr>
                <th>{{ trans("accessories.title") }}</th>
                <th>{{ trans("accessories.image") }}</th>
            </thead>
            <tbody>
            @if(count($items) > 0)
                @foreach($items as $d)
                    <tr>
                        <td>{{ str_limit(getDefaultValueKey($d->title) , 20) }}</td>
                        <td>
                            <img src="{{ url(env("UPLOAD_PATH")."/".$d->image)}}" width="80"/>
                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @include("layouts.paginate" , ["items" => $items])

    </div>
@endsection
