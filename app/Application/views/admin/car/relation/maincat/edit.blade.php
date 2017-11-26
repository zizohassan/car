		<div class="form-group">
			<label for="maincat">{{ trans( "maincat.maincat") }}</label>
			@php $maincats = App\Application\Model\Maincat::pluck("title" ,"id")->all()  @endphp
			@php  $maincat_id = isset($item) ? $item->maincat_id : null @endphp
			<select name="maincat_id"  class="form-control" >
			@foreach( $maincats as $key => $relatedItem)
			<option value="{{ $key }}"  {{ $key == $maincat_id  ? "selected" : "" }}> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
			</select>
		</div>
