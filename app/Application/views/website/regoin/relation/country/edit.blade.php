		<div class="form-group">
			<label for="country">{{ trans( "country.country") }}</label>
			@php $countries = App\Application\Model\Country::pluck("title" ,"id")->all()  @endphp
			@php  $country_id = isset($item) ? $item->country_id : null @endphp
			<select name="country_id"  class="form-control" >
			@foreach( $countries as $key => $relatedItem)
			<option value="{{ $key }}"  {{ $key == $country_id  ? "selected" : "" }}> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
			</select>
		</div>
