		<tr>
			<th>
			{{ trans( "maincat.maincat") }}
			</th>
			<td>
		<div class="form-group"><ol>
			@php  $maincats = $item->maincat ? $item->maincat->pluck("title" ,"id")->all() : [] @endphp
			@foreach( $maincats as $key => $relatedItem)
		<li>
		<a href="/maincat/item/{{ $key }}">{{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</a>
		</li>
			@endforeach
		</ol></div>
			</td>
		</tr>
