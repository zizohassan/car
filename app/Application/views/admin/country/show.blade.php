@extends(layoutExtend())

@section('title')
    {{ trans('country.country') }} {{ trans('home.view') }}
@endsection

@section('content')
    @component(layoutForm() , ['title' => trans('country.country') , 'model' => 'country' , 'action' => trans('home.view')  ])
		<table class="table table-bordered table-responsive table-striped">
			</tr>
				<tr><th>{{ trans("country.title") }}</th>
				@php $type =  getFileType("title" , $item->title) @endphp
				@if($type == "File")
					<td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
				@elseif($type == "Image")
					<td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
				@else
					<td>{{ getDefaultValueKey(nl2br($item->title)) }}</td>
				@endif</tr>
			</tr>
		</table>

        @include('admin.country.buttons.delete' , ['id' => $item->id])
        @include('admin.country.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
