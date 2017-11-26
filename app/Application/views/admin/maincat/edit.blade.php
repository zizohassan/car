@extends(layoutExtend())
 @section('title')
    {{ trans('maincat.maincat') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
 @section('content')
    @component(layoutForm() , ['title' => trans('maincat.maincat') , 'model' => 'maincat' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
         @include(layoutMessage())
        <form action="{{ concatenateLangToUrl('admin/maincat/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("admin.maincat.relation.brand.edit")
    <div class="form-group">
   <label for="title">{{ trans("maincat.title")}}</label>
    {!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "maincat") !!}
   </label>
  </div>
  <div class="form-group">
   <label for="image">{{ trans("maincat.image")}}</label>
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
                    {{ trans('home.save') }}  {{ trans('maincat.maincat') }}
                </button>
            </div>
        </form>
    @endcomponent
@endsection
