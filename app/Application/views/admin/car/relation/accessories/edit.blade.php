		<div class="form-group">
			<label for="accessories">{{ trans( "accessories.accessories") }}</label><br>
			@php $accessories = App\Application\Model\Accessories::pluck("title" , "id")->all()  @endphp
			@php  $accessories_id = isset($item) ? $item->accessories->pluck("id")->all() : [] @endphp
			@foreach( $accessories as $key => $relatedItem)
			<input name="accessories_id[]" type="checkbox" value="{{ $key }}" {{ in_array($key ,$accessories_id ) ? "checked" : "" }} />
			<label> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
		</div>
