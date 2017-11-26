@extends(layoutExtend())
 @section('title')
    {{ trans('accessories.accessories') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
 @section('content')
    @component(layoutForm() , ['title' => trans('accessories.accessories') , 'model' => 'accessories' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
         @include(layoutMessage())
        <form action="{{ concatenateLangToUrl('admin/accessories/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("admin.accessories.relation.car.edit")
    <div class="form-group">
   <label for="title">{{ trans("accessories.title")}}</label>
    {!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "accessories") !!}
   </label>
  </div>
  <div class="form-group">
   <label for="image">{{ trans("accessories.image")}}</label>
    @if(isset($item) && $item->image != "")
    <br>
    <img src="{{ url(env("UPLOAD_PATH")."/".$item->image) }}" class="thumbnail" alt="" width="200">
    <br>
    @endif
    <input type="file" name="image" >
   </label>
  </div>
              <div class="form-group">
                <button type="submit" name="submit" class="btn btn-default" >
                    <i class="material-icons">check_circle</i>
                    {{ trans('home.save') }}  {{ trans('accessories.accessories') }}
                </button>
            </div>
        </form>
    @endcomponent
@endsection
