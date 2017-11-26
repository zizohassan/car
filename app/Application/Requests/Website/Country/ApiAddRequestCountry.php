<?php

namespace App\Application\Requests\Website\Country;


class ApiAddRequestCountry
{
    public function rules()
    {
        return [
            "title.*" => "min:2|max:191|required",
			
        ];
    }
}
