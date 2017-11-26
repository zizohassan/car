<?php
 namespace App\Application\Requests\Website\Car;
  class ApiAddRequestCar
{
    public function rules()
    {
        return [
        	"regoin_id" => "required|integer",
         "country_id" => "required|integer",
         "maincat_id" => "required|integer",
         "brand_id" => "required|integer",
         "user_id" => "required|integer",
            "title" => "min:10|max:191|requiredbody",
   "youtube" => "nullable|url",
            ];
    }
}
