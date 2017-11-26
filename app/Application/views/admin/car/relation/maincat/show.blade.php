		<tr>
			<th>
			{{ trans( "maincat.maincat") }}
			</th>
			<td>
				@php $maincat = App\Application\Model\Maincat::find($item->maincat_id);  @endphp
				{{ is_json($maincat->title) ? getDefaultValueKey($maincat->title) :  $maincat->title}}
			</td>
		</tr>
