		<tr>
			<th>
			{{ trans( "brand.brand") }}
			</th>
			<td>
				@php $brand = App\Application\Model\Brand::find($item->brand_id);  @endphp
				{{ is_json($brand->title) ? getDefaultValueKey($brand->title) :  $brand->title}}
			</td>
		</tr>
