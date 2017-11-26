<?php

namespace App\Application\Requests\Website\Slider;

use Illuminate\Support\Facades\Route;

class ApiUpdateRequestSlider
{
    public function rules()
    {
        $id = Route::input('id');
        return [
            "title.*" => "min:2|max:191body",
			"image" => "required|image",
			
        ];
    }
}
