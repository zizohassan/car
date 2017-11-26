		<div class="form-group">
			<label for="brand">{{ trans( "brand.brand") }}</label><br>
			@php $brands = App\Application\Model\Brand::pluck("title" , "id")->all()  @endphp
			@php  $brand_id = isset($item) ? $item->brand->pluck("id")->all() : [] @endphp
			@foreach( $brands as $key => $relatedItem)
			<input name="brand_id[]" type="checkbox" value="{{ $key }}" {{ in_array($key ,$brand_id ) ? "checked" : "" }} />
			<label> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
		</div>
