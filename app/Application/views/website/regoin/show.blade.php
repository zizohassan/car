@extends('layouts.app')
  @section('title')
    {{ trans('regoin.regoin') }} {{ trans('home.view') }}
@endsection
  @section('content')
<div class="container">
        <a href="{{ url('regoin') }}" class="btn btn-danger"><i class="fa fa-arrow-left"></i> {{ trans('website.Back') }}  </a>
  <table class="table table-bordered table-responsive table-striped">
  @include("website.regoin.relation.country.show")
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
          @include('website.regoin.buttons.delete' , ['id' => $item->id])
        @include('website.regoin.buttons.edit' , ['id' => $item->id])
</div>
@endsection
