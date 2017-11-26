<?php
 namespace App\Application\Model;
 use Illuminate\Database\Eloquent\Model;
 class Regoin extends Model
{
   public $table = "regoin";
   public function car(){
		return $this->hasMany(Car::class, "regoin_id");
		}
   public function country(){
  return $this->belongsTo(Country::class, "country_id");
  }
    protected $fillable = [
   'country_id',
        'title'
   ];
 }
