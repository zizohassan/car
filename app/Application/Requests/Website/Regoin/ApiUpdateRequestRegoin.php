<?php
 namespace App\Application\Requests\Website\Regoin;
 use Illuminate\Support\Facades\Route;
 class ApiUpdateRequestRegoin
{
    public function rules()
    {
        $id = Route::input('id');
        return [
        	"country_id" => "required|integer",
            "title.*" => "min:2|max:191|required",
            ];
    }
}
