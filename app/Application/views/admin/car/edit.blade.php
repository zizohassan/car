@extends(layoutExtend())
@section('title')
    {{ trans('car.car') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
@section('content')
    @component(layoutForm() , ['title' => trans('car.car') , 'model' => 'car' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
    @include(layoutMessage())
    <form action="{{ concatenateLangToUrl('admin/car/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        @include("admin.car.relation.regoin.edit")
        @include("admin.car.relation.country.edit")
        @include("admin.car.relation.accessories.edit")
        @include("admin.car.relation.maincat.edit")
        @include("admin.car.relation.brand.edit")
        @include("admin.car.relation.user.edit")
        <div class="form-group">
            <label for="title">{{ trans("car.title")}}</label>
            <input type="text" name="title" class="form-control" id="title"
                   value="{{ isset($item->title) ? $item->title : old("title")  }}"
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
                      placeholder="{{ trans("car.body")}}">{{ isset($item->body) ? $item->body : old("body")  }}</textarea>
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
                <i class="material-icons">check_circle</i>
                {{ trans('home.save') }}  {{ trans('car.car') }}
            </button>
        </div>
    </form>
    @include("admin.car.comment.edit")
    @endcomponent
@endsection
