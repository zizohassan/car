<?php
 namespace App\Application\Model;
 use Illuminate\Database\Eloquent\Model;
 class Maincat extends Model
{
   public $table = "maincat";
   public function car(){
		return $this->hasMany(Car::class, "maincat_id");
		}
  public function brand(){
  return $this->belongsToMany( Brand::class, "brand_maincat", "maincat_id" , "brand_id");
  }
    protected $fillable = [
        'title','image'
   ];
 }
