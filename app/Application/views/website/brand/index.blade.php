@extends('layouts.app')

@section('title')
    {{ trans('brand.brand') }} {{ trans('home.control') }}
@endsection

@section('content')
    <div class="feturedsection">
        <h1 class="text-center"><span class="bdots">&bullet;</span><span
                    class="carstxt">{{ trans('website.Brands') }}</span>&bullet;</h1>
    </div>
    <div class="feturedimage">

        @if(count($items) > 0)
            @foreach($items->chunk(2) as $item)
                <div class="row firstrow">
                    @foreach($item as $d)
                        <div class="col-lg-6 costumcol colborder1">
                            <div class="row costumrow">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
                                    <img src="{{ url(env("UPLOAD_PATH")."/".$d->image)}}"
                                         alt="{{ str_limit(getDefaultValueKey($d->title) , 20) }}">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                                    <div class="featurecontant">
                                        <h1>{{ str_limit(getDefaultValueKey($d->title) , 20) }}</h1>
                                        <a href="{{ url(getCurrentLang().'/car?brand='.$d->id) }}" id="btnRL">READ
                                            LESS</a>
                                    </div>
                                </div>
                            </div>
                        </div>
            @endforeach
    </div>
    @endforeach
    @endif
    </div>
    </div>
    @include("layouts.paginate" , ["items" => $items])

@endsection
