<?php
 namespace App\Application\Requests\Website\Regoin;
  class ApiAddRequestRegoin
{
    public function rules()
    {
        return [
        	"country_id" => "required|integer",
            "title.*" => "min:2|max:191|required",
            ];
    }
}
