@extends('layouts.app')

@section('title')
    {{ trans('country.country') }} {{ trans('home.control') }}
@endsection

@section('content')
    <div class="container">
        <div><h1>{{ trans('website.country') }}</h1></div>
        <table class="table table-responsive table-striped table-bordered">
            <thead>
            <tr>
                <th>{{ trans("country.title") }}</th>
            </thead>
            <tbody>
            @if(count($items) > 0)
                @foreach($items as $d)
                    <tr>
                        <td><a href="{{ url(getCurrentLang().'/car?country='.$d->id) }}"> {{ str_limit(getDefaultValueKey($d->title) , 20) }}</a></td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @include("layouts.paginate" , ["items" => $items])

    </div>
@endsection
