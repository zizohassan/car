@extends('layouts.app')

@section('title')
    {{ trans('country.country') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection

@section('content')
<div class="container">
         @include('layouts.messages')
         <a href="{{ url('country') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
        <form action="{{ concatenateLangToUrl('country/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
             		<div class="form-group">
			<label for="title">{{ trans("country.title")}}</label>
				{!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "country") !!}
			</label>
		</div>

            <div class="form-group">
                <button type="submit" name="submit" class="btn btn-default" >
                    <i class="fa fa-save"></i>
                    {{ trans('website.Update') }}  {{ trans('website.country') }}
                </button>
            </div>
        </form>
</div>
@endsection
