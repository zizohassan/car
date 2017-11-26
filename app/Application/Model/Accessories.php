<?php
 namespace App\Application\Model;
 use Illuminate\Database\Eloquent\Model;
 class Accessories extends Model
{
   public $table = "accessories";
  public function car(){
		return $this->belongsToMany( Car::class, "accessories_car", "accessories_id" , "car_id");
		}
    protected $fillable = [
        'title','image'
   ];
 }
