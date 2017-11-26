@extends('layouts.app')

@section('title')
    {{ trans('slider.slider') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection

@section('content')
<div class="container">
         @include('layouts.messages')
         <a href="{{ url('slider') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
        <form action="{{ concatenateLangToUrl('slider/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
             		<div class="form-group">
			<label for="title">{{ trans("slider.title")}}</label>
				{!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "slider") !!}
			</label>
		</div>
		<div class="form-group">
			<label for="body">{{ trans("slider.body")}}</label>
				<textarea name="body" class="form-control" id="body"   placeholder="{{ trans("slider.body")}}">{{ isset($item->body) ? $item->body : old("body") }}</textarea>
			</label>
		</div>
		<div class="form-group">
			<label for="image">{{ trans("slider.image")}}</label>
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
                    {{ trans('website.Update') }}  {{ trans('website.slider') }}
                </button>
            </div>
        </form>
</div>
@endsection
