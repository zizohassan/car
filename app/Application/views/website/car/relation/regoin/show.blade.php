		<tr>
			<th>
			{{ trans( "regoin.regoin") }}
			</th>
			<td>
				@php $regoin = App\Application\Model\Regoin::find($item->regoin_id);  @endphp
				{{ is_json($regoin->title) ? getDefaultValueKey($regoin->title) :  $regoin->title}}
			</td>
		</tr>
