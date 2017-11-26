<?php

namespace App\Application\Requests\Website\Slider;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Route;

class UpdateRequestSlider extends FormRequest
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
        $id = Route::input('id');
        return [
            "title.*" => "min:2|max:191",
			"body" => "min:2|required",
			"image" => "required|image",
			
        ];
    }
}
