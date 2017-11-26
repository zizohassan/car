@extends(layoutExtend())
  @section('title')
    {{ trans('car.car') }} {{ trans('home.view') }}
@endsection
  @section('content')
    @component(layoutForm() , ['title' => trans('car.car') , 'model' => 'car' , 'action' => trans('home.view')  ])
  <table class="table table-bordered table-responsive table-striped">
  @include("admin.car.relation.regoin.show")
  @include("admin.car.relation.country.show")
  @include("admin.car.relation.accessories.show")
  @include("admin.car.relation.maincat.show")
  @include("admin.car.relation.brand.show")
  @include("admin.car.relation.user.show")
   </tr>
      <tr>
          <th>{{ trans("car.Price") }}</th>
          <td>{{ $item->price    }}</td>
      </tr>
    <tr><th>{{ trans("car.title") }}</th>
    @php $type =  getFileType("title" , $item->title) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->title) }}">{{ $item->title }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->title) }}" /></td>
    @else
     <td>{{ nl2br($item->title) }}</td>
    @endif</tr>
    <tr><th>{{ trans("car.body") }}</th>
    @php $type =  getFileType("body" , $item->body) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->body) }}">{{ $item->body }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->body) }}" /></td>
    @else
     <td>{{ nl2br($item->body) }}</td>
    @endif</tr>
    <tr><th>{{ trans("car.image") }}</th>
    @php $type =  getFileType("image" , $item->image) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->image) }}">{{ $item->image }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->image) }}" /></td>
    @else
     <td>{{ nl2br($item->image) }}</td>
    @endif</tr>
    <tr><th>{{ trans("car.youtube") }}</th>
    @php $type =  getFileType("youtube" , $item->youtube) @endphp
    @if($type == "File")
     <td> <a href="{{ url(env("UPLOAD_PATH")."/".$item->youtube) }}">{{ $item->youtube }}</a></td>
    @elseif($type == "Image")
     <td> <img src="{{ url(env("UPLOAD_PATH")."/".$item->youtube) }}" /></td>
    @else
    @if(isset($item) && $item->youtube != "")
     <td>
    <iframe width="420" height="315" src="https://www.youtube.com/embed/{{ isset($item->youtube) ? getYouTubeId($item->youtube) : old("youtube")  }}"></iframe>
     </td>
    @endif
    @endif</tr>
   </tr>
  </table>
          @include('admin.car.buttons.delete' , ['id' => $item->id])
        @include('admin.car.buttons.edit' , ['id' => $item->id])
    @endcomponent
@endsection
