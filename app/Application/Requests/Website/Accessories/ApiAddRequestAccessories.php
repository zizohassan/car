<?php

namespace App\Application\Requests\Website\Accessories;


class ApiAddRequestAccessories
{
    public function rules()
    {
        return [
            "title.*" => "min:2|max:191|required",
			"image" => "required|image",
			
        ];
    }
}
