<?php

namespace App\Application\Requests\Website\Brand;

use Illuminate\Support\Facades\Route;

class ApiUpdateRequestBrand
{
    public function rules()
    {
        $id = Route::input('id');
        return [
            "title.*" => "min:2|max:191|required",
			"image" => "required|image",
			
        ];
    }
}
