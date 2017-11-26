		<div class="form-group">
			<label for="user">{{ trans( "user.user") }}</label>
			@php $users = App\Application\Model\User::pluck("name" ,"id")->all()  @endphp
			@php  $user_id = isset($item) ? $item->user_id : null @endphp
			<select name="user_id"  class="form-control" >
			@foreach( $users as $key => $relatedItem)
			<option value="{{ $key }}"  {{ $key == $user_id  ? "selected" : "" }}> {{ is_json($relatedItem) ? getDefaultValueKey($relatedItem) :  $relatedItem}}</label>
			@endforeach
			</select>
		</div>
