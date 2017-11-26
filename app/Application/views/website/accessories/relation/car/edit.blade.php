		@if(isset($item))
		<div class="form-group"><ol>
			@php  $cars = $item->car ? $item->car->pluck("title" ,"id")->all() : [] @endphp
			@foreach( $cars as $key => $relatedItem)
		<li class="col-lg-2">
		<a href="/car/item/{{ $key }}">{{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</a>
		</li>
			@endforeach
		</ol></div>
		@endif
