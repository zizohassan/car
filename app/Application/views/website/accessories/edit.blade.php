@extends('layouts.app')
 @section('title')
    {{ trans('accessories.accessories') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
 @section('content')
<div class="container">
         @include('layouts.messages')
         <a href="{{ url('accessories') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
        <form action="{{ concatenateLangToUrl('accessories/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("website.accessories.relation.car.edit")
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
                    <i class="fa fa-save"></i>
                    {{ trans('website.Update') }}  {{ trans('website.accessories') }}
                </button>
            </div>
        </form>
</div>
@endsection
