		<tr>
			<th>
			{{ trans( "accessories.accessories") }}
			</th>
			<td>
		<div class="form-group"><ol>
			@php  $accessories = $item->accessories ? $item->accessories->pluck("title" ,"id")->all() : [] @endphp
			@foreach( $accessories as $key => $relatedItem)
		<li>
		<a href="/accessories/item/{{ $key }}">{{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</a>
		</li>
			@endforeach
		</ol></div>
			</td>
		</tr>
