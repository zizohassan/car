		<div class="form-group">
			<label for="brand">{{ trans( "brand.brand") }}</label>
			@php $brands = App\Application\Model\Brand::pluck("title" ,"id")->all()  @endphp
			@php  $brand_id = isset($item) ? $item->brand_id : null @endphp
			<select name="brand_id"  class="form-control" >
			@foreach( $brands as $key => $relatedItem)
			<option value="{{ $key }}"  {{ $key == $brand_id  ? "selected" : "" }}> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
			</select>
		</div>
