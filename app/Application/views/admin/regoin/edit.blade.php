@extends(layoutExtend())
 @section('title')
    {{ trans('regoin.regoin') }} {{  isset($item) ? trans('home.edit')  : trans('home.add')  }}
@endsection
 @section('content')
    @component(layoutForm() , ['title' => trans('regoin.regoin') , 'model' => 'regoin' , 'action' => isset($item) ? trans('home.edit')  : trans('home.add')  ])
         @include(layoutMessage())
        <form action="{{ concatenateLangToUrl('admin/regoin/item') }}{{ isset($item) ? '/'.$item->id : '' }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            @include("admin.regoin.relation.country.edit")
    <div class="form-group">
   <label for="title">{{ trans("regoin.title")}}</label>
    {!! extractFiled("title" , isset($item->title) ? $item->title : old("title") , "text" , "regoin") !!}
   </label>
  </div>
              <div class="form-group">
                <button type="submit" name="submit" class="btn btn-default" >
                    <i class="material-icons">check_circle</i>
                    {{ trans('home.save') }}  {{ trans('regoin.regoin') }}
                </button>
            </div>
        </form>
    @endcomponent
@endsection
