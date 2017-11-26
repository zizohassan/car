		@if(isset($item))
		<div class="form-group"><ol>
			@php  $maincats = $item->maincat ? $item->maincat->pluck("title" ,"id")->all() : [] @endphp
			@foreach( $maincats as $key => $relatedItem)
		<li class="col-lg-2">
		<a href="/admin/maincat/item/{{ $key }}">{{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</a>
		</li>
			@endforeach
		</ol></div>
		@endif
