<?php

namespace App\Application\Requests\Website\Country;

use Illuminate\Support\Facades\Route;

class ApiUpdateRequestCountry
{
    public function rules()
    {
        $id = Route::input('id');
        return [
            "title.*" => "min:2|max:191|required",
			
        ];
    }
}
