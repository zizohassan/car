@extends(layoutExtend())
  @section('title')
    {{ trans('regoin.regoin') }} {{ trans('home.view') }}
@endsection
  @section('content')
    @component(layoutForm() , ['title' => trans('regoin.regoin') , 'model' => 'regoin' , 'action' => trans('home.view')  ])
  <table class="table table-bordered table-responsive table-striped">
  @include("admin.regoin.relation.country.show")
   </tr>
    <tr><th>{{ trans("regoin.title") }}</th>
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
          @include('admin.regoin.buttons.delete' , ['id' => $item->id])
        @include('admin.regoin.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
