@extends(layoutExtend())
  @section('title')
    {{ trans('brand.brand') }} {{ trans('home.view') }}
@endsection
  @section('content')
    @component(layoutForm() , ['title' => trans('brand.brand') , 'model' => 'brand' , 'action' => trans('home.view')  ])
  <table class="table table-bordered table-responsive table-striped">
  @include("admin.brand.relation.maincat.show")
   </tr>
    <tr><th>{{ trans("brand.title") }}</th>
    @php $type =  getFileType("title" , $item->title) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
    @else
     <td>{{ getDefaultValueKey(nl2br($item->title)) }}</td>
    @endif</tr>
    <tr><th>{{ trans("brand.image") }}</th>
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
          @include('admin.brand.buttons.delete' , ['id' => $item->id])
        @include('admin.brand.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
