<?php

namespace App\Application\Requests\Website\Accessories;

use Illuminate\Support\Facades\Route;

class ApiUpdateRequestAccessories
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
