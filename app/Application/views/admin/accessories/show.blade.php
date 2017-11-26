@extends(layoutExtend())
  @section('title')
    {{ trans('accessories.accessories') }} {{ trans('home.view') }}
@endsection
  @section('content')
    @component(layoutForm() , ['title' => trans('accessories.accessories') , 'model' => 'accessories' , 'action' => trans('home.view')  ])
  <table class="table table-bordered table-responsive table-striped">
  @include("admin.accessories.relation.car.show")
   </tr>
    <tr><th>{{ trans("accessories.title") }}</th>
    @php $type =  getFileType("title" , $item->title) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
    @else
     <td>{{ getDefaultValueKey(nl2br($item->title)) }}</td>
    @endif</tr>
    <tr><th>{{ trans("accessories.image") }}</th>
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
          @include('admin.accessories.buttons.delete' , ['id' => $item->id])
        @include('admin.accessories.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
