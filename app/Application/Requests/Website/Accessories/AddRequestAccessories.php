<?php

namespace App\Application\Requests\Website\Accessories;

use Illuminate\Foundation\Http\FormRequest;

class AddRequestAccessories extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "title.*" => "min:2|max:191|required",
			"image" => "required|image",
			
        ];
    }
}
