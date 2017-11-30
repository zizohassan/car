@extends('layouts.app')
@section('title')
    {{ trans('car.car') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
@section('content')
    <div class="container">
        @include('layouts.messages')
        <a href="{{ url('car') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}
        </a>
        <form action="{{ concatenateLangToUrl('car/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post"
              enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("website.car.relation.regoin.edit")
            @include("website.car.relation.country.edit")
            @include("website.car.relation.accessories.edit")
            @include("website.car.relation.maincat.edit")
            @include("website.car.relation.brand.edit")
            <div class="form-group">
                <label for="title">{{ trans("car.title")}}</label>
                <input type="text" name="title" class="form-control" id="title"
                       value="{{ isset($item->title) ? $item->title : old("title") }}"
                       placeholder="{{ trans("car.title")}}">
                </label>
            </div>
            <div class="form-group">
                <label for="title">{{ trans("car.Price")}}</label>
                <input type="text" name="price" class="form-control" id="price"
                       value="{{ isset($item->price) ? $item->price : old("price")  }}"
                       placeholder="{{ trans("car.price")}}">
                </label>
            </div>
            <div class="form-group">
                <label for="body">{{ trans("car.body")}}</label>
                <textarea name="body" class="form-control" id="body"
                          placeholder="{{ trans("car.body")}}">{{ isset($item->body) ? $item->body : old("body") }}</textarea>
                </label>
            </div>
            <div class="form-group">
                <label for="image">{{ trans("car.image")}}</label>
                @if(isset($item) && $item->image != "")
                    <br>
                    <img src="{{ url(env("UPLOAD_PATH")."/".$item->image) }}" class="thumbnail" alt="" width="200">
                    <br>
                @endif
                <input type="file" name="image">
                </label>
            </div>
            <div class="form-group">
                <label for="youtube">{{ trans("car.youtube")}}</label>
                @if(isset($item) && $item->youtube != "")
                    <br>
                    <iframe width="420" height="315"
                            src="https://www.youtube.com/embed/{{ isset($item->youtube) ? getYouTubeId($item->youtube) : old("youtube")  }}"></iframe>
                    <br>
                @endif
                <input type="text" name="youtube" class="form-control" id="youtube"
                       value="{{ isset($item->youtube) ? $item->youtube : old("youtube")  }}"
                       placeholder="{{ trans("car.youtube")}}">
                </label>
            </div>
            <div class="form-group">
                <button type="submit" name="submit" class="btn btn-default">
                    <i class="fa fa-save"></i>
                    {{ trans('website.Update') }}  {{ trans('website.car') }}
                </button>
            </div>
        </form>
        @include("website.car.comment.edit")
    </div>
@endsection
