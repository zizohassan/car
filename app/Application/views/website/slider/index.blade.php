@extends('layouts.app')

@section('title')
     {{ trans('slider.slider') }} {{ trans('home.control') }}
@endsection

@section('content')
<div class="container">
    <div><h1>{{ trans('website.slider') }}</h1></div>
     <div><a href="{{ url('slider/item') }}" class="btn btn-default"><i class="fa fa-plus"></i> {{ trans('website.slider') }}</a><br></div>
 <table class="table table-responsive table-striped table-bordered">
		<thead>
			<tr>
				<th>{{ trans("slider.title") }}</th>
				<th>{{ trans("slider.body") }}</th>
				<th>{{ trans("slider.image") }}</th>
				<th>{{ trans("slider.edit") }}</th>
				<th>{{ trans("slider.show") }}</th>
				<th>{{ trans("slider.delete") }}</th>
				</thead>
		<tbody>
		@if(count($items) > 0)
			@foreach($items as $d)
				<tr>
					<td>{{ str_limit(getDefaultValueKey($d->title) , 20) }}</td>
				<td>{{ str_limit($d->body , 20) }}</td>
									<td>
				<img src="{{ url(env("UPLOAD_PATH")."/".$d->image)}}"  width="80" />
					</td>
<td>@include("website.slider.buttons.edit", ["id" => $d->id ])</td>
					<td>@include("website.slider.buttons.view", ["id" => $d->id ])</td>
					<td>@include("website.slider.buttons.delete", ["id" => $d->id ])</td>
					</tr>
					@endforeach
				@endif
			</tbody>
		</table>
	@include("layouts.paginate" , ["items" => $items])
		
</div>
@endsection
