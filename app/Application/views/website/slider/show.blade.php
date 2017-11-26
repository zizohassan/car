@extends('layouts.app')

@section('title')
    {{ trans('slider.slider') }} {{ trans('home.view') }}
@endsection

@section('content')
<div class="container">
        <a href="{{ url('slider') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
		<table class="table table-bordered table-responsive table-striped">
			</tr>
				<tr><th>{{ trans("slider.title") }}</th>
				@php $type =  getFileType("title" , $item->title) @endphp
				@if($type == "File")
					<td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
				@elseif($type == "Image")
					<td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
				@else
					<td>{{ getDefaultValueKey(nl2br($item->title)) }}</td>
				@endif</tr>
				<tr><th>{{ trans("slider.body") }}</th>
				@php $type =  getFileType("body" , $item->body) @endphp
				@if($type == "File")
					<td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->body) }}">{{ $item->body }}</a></td>
				@elseif($type == "Image")
					<td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->body) }}" /></td>
				@else
					<td>{{ nl2br($item->body) }}</td>
				@endif</tr>
				<tr><th>{{ trans("slider.image") }}</th>
				@php $type =  getFileType("image" , $item->image) @endphp
				@if($type == "File")
					<td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->image) }}">{{ $item->image }}</a></td>
				@elseif($type == "Image")
					<td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->image) }}" /></td>
				@else
					<td>{{ nl2br($item->image) }}</td>
				@endif</tr>
			</tr>
		</table>

        @include('website.slider.buttons.delete' , ['id' => $item->id])
        @include('website.slider.buttons.edit' , ['id' => $item->id])
</div>
@endsection
