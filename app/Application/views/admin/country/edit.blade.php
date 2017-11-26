@extends(layoutExtend())

@section('title')
    {{ trans('country.country') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection

@section('content')
    @component(layoutForm() , ['title' => trans('country.country') , 'model' => 'country' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
         @include(layoutMessage())
        <form action="{{ concatenateLangToUrl('admin/country/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}

 		<div class="form-group">
			<label for="title">{{ trans("country.title")}}</label>
				{!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "country") !!}
			</label>
		</div>


            <div class="form-group">
                <button type="submit" name="submit" class="btn btn-default" >
                    <i class="material-icons">check_circle</i>
                    {{ trans('home.save') }}  {{ trans('country.country') }}
                </button>
            </div>
        </form>
    @endcomponent
@endsection
