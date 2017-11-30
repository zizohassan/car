<?php

namespace App\Application\Requests\Website\CarComment;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Route;

class UpdateRequestCarComment extends FormRequest
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
            "user_id" => "",
			"car_id" => "",
			"comment" => "min:10|required",
			
        ];
    }
}
