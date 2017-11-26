@extends('layouts.app')

@section('title')
    {{ trans('regoin.regoin') }} {{ trans('home.control') }}
@endsection

@section('content')
    <div class="container">
        <div><h1>{{ trans('website.regoin') }}</h1></div>
        <table class="table table-responsive table-striped table-bordered">
            <thead>
            <tr>
                <th>{{ trans("regoin.title") }}</th>
            </thead>
            <tbody>
            @if(count($items) > 0)
                @foreach($items as $d)
                    <tr>
                        <td><a href="{{ url(getCurrentLang().'/car?regoin='.$d->id) }}"> {{ str_limit(getDefaultValueKey($d->title) , 20) }}</a></td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @include("layouts.paginate" , ["items" => $items])

    </div>
@endsection
