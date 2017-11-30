@extends('layouts.app')
@section('content')
        <div id="carousel-up" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner " role="listbox">
                @foreach(\App\Application\Model\Slider::get() as $slide)
                    <div class="item {{ $loop->first ? 'active' : '' }}">
                        <img src="{{ url(env('UPLOAD_PATH').'/'.$slide->image) }}" alt="oldcar">
                        <div class="carousel-caption">
                            <h2>{{ getDefaultValueKey($slide->title) }}</h2>
                            <p>
                                {{ $slide->body }}
                            </p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>


        <div class="clearfix">
            <div class="latestcars">
                <h1 class="text-center">• {{ trans('website.LATEST CARS') }} •</h1>
            </div>

            <div class="grid clearfix">
                <div class="row">
                    @foreach(\App\Application\Model\Car::limit(8)->orderBy('id')->get() as $car)
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="txthover">
                                <img src="{{ url(env('UPLOAD_PATH').'/'.$car->image) }}" alt="car1">
                                <div class="txtcontent">
                                    <div class="simpletxt">
                                        <h3 class="name">
                                            {{ $car->title }}
                                        </h3>
                                        <p>
                                            {{ str_limit($car->body , 100) }}
                                        </p>
                                        <h4 class="price"> {{ $car->price }}</h4>
                                        <a href="{{ url('/car/'.$car->id.'/view') }}">READ MORE</a><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
@endsection
