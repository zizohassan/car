<?php
 namespace App\Application\Requests\Website\Regoin;
 use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Route;
 class UpdateRequestRegoin extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
     /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $id = Route::input('id');
        return [
        	"country_id" => "required|integer",
            "title.*" => "min:2|max:191|required",
            ];
    }
}
