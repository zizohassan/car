@extends('layouts.app')

@section('title')
    {{ trans('car.car') }} {{ trans('home.control') }}
@endsection

@section('content')
    <div class="container">
        <div><h1>{{ trans('website.car') }}</h1></div>
        <div><a href="{{ url('car/item') }}" class="btn btn-default"><i
                        class="fa fa-plus"></i> {{ trans('website.car') }}</a><br></div>
        <table class="table table-responsive table-striped table-bordered">
            <thead>
            <tr>
                <th>{{ trans("car.title") }}</th>
                <th>{{ trans("car.image") }}</th>
            </thead>
            <tbody>
            @if(count($items) > 0)
                @foreach($items as $d)
                    <tr>
                        <td width="80">
                            <img src="{{ url(env("UPLOAD_PATH")."/".$d->image)}}" width="80"/>
                        </td>
                        <td>
                            <a href="{{ url('car/'.$d->id.'/view') }}">
                                {{ str_limit($d->title , 20) }}
                            </a>

                            <p>
                                {{ str_limit($d->body , 200) }}
                            </p>
                            <p>
                                <small><a href="{{ url(getCurrentLang().'/car?country='.$d->country->id) }}">{{ getDefaultValueKey($d->country->title) }}</a></small> ,
                                <small><a href="{{ url(getCurrentLang().'/car?region='.$d->regoin->id) }}">{{ getDefaultValueKey($d->regoin->title) }}</a></small> ,
                                <small><a href="{{ url(getCurrentLang().'/car?brand='.$d->brand->id) }}">{{ getDefaultValueKey($d->brand->title) }}</a></small> ,
                                <small><a href="{{ url(getCurrentLang().'/car?maincat='.$d->maincat->id) }}">{{ getDefaultValueKey($d->maincat->title) }}</a></small>
                                @if($d->user_id == auth()->user()->id)
                                    @include("website.car.buttons.edit", ["id" => $d->id ])
                                @endif
                            </p>

                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
        @include("layouts.paginate" , ["items" => $items])

    </div>
@endsection
