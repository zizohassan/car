@extends(layoutExtend())

@section('title')
    {{ trans('slider.slider') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection

@section('content')
    @component(layoutForm() , ['title' => trans('slider.slider') , 'model' => 'slider' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
         @include(layoutMessage())
        <form action="{{ concatenateLangToUrl('admin/slider/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}

 		<div class="form-group">
			<label for="title">{{ trans("slider.title")}}</label>
				{!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "slider") !!}
			</label>
		</div>
		<div class="form-group">
			<label for="body">{{ trans("slider.body")}}</label>
				<textarea name="body" class="form-control" id="body"   placeholder="{{ trans("slider.body")}}">{{ isset($item->body) ? $item->body : old("body")  }}</textarea>
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
                    <i class="material-icons">check_circle</i>
                    {{ trans('home.save') }}  {{ trans('slider.slider') }}
                </button>
            </div>
        </form>
    @endcomponent
@endsection
