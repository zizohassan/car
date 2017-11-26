		<div class="form-group">
			<label for="regoin">{{ trans( "regoin.regoin") }}</label>
			@php $regoins = App\Application\Model\Regoin::pluck("title" ,"id")->all()  @endphp
			@php  $regoin_id = isset($item) ? $item->regoin_id : null @endphp
			<select name="regoin_id"  class="form-control" >
			@foreach( $regoins as $key => $relatedItem)
			<option value="{{ $key }}"  {{ $key == $regoin_id  ? "selected" : "" }}> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
			</select>
		</div>
