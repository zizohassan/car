<?php
 namespace App\Application\Model;
 use Illuminate\Database\Eloquent\Model;
 class Brand extends Model
{
   public $table = "brand";
   public function car(){
		return $this->hasMany(Car::class, "brand_id");
		}
  public function maincat(){
  return $this->belongsToMany( Maincat::class, "brand_maincat", "brand_id" , "maincat_id");
  }
    protected $fillable = [
        'title','image'
   ];
 }
