		<tr>
			<th>
			{{ trans( "brand.brand") }}
			</th>
			<td>
		<div class="form-group"><ol>
			@php  $brands = $item->brand ? $item->brand->pluck("title" ,"id")->all() : [] @endphp
			@foreach( $brands as $key => $relatedItem)
		<li>
		<a href="/admin/brand/item/{{ $key }}">{{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</a>
		</li>
			@endforeach
		</ol></div>
			</td>
		</tr>
