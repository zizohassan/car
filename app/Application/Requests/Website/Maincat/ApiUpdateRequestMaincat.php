<?php

namespace App\Application\Requests\Website\Maincat;

use Illuminate\Support\Facades\Route;

class ApiUpdateRequestMaincat
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
