@extends('layouts.app')
 @section('title')
    {{ trans('maincat.maincat') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
 @section('content')
<div class="container">
         @include('layouts.messages')
         <a href="{{ url('maincat') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
        <form action="{{ concatenateLangToUrl('maincat/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("website.maincat.relation.brand.edit")
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
                    <i class="fa fa-save"></i>
                    {{ trans('website.Update') }}  {{ trans('website.maincat') }}
                </button>
            </div>
        </form>
</div>
@endsection
