@extends(layoutExtend())
  @section('title')
    {{ trans('maincat.maincat') }} {{ trans('home.view') }}
@endsection
  @section('content')
    @component(layoutForm() , ['title' => trans('maincat.maincat') , 'model' => 'maincat' , 'action' => trans('home.view')  ])
  <table class="table table-bordered table-responsive table-striped">
  @include("admin.maincat.relation.brand.show")
   </tr>
    <tr><th>{{ trans("maincat.title") }}</th>
    @php $type =  getFileType("title" , $item->title) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
    @else
     <td>{{ getDefaultValueKey(nl2br($item->title)) }}</td>
    @endif</tr>
    <tr><th>{{ trans("maincat.image") }}</th>
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
          @include('admin.maincat.buttons.delete' , ['id' => $item->id])
        @include('admin.maincat.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
