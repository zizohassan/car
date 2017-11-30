<?php
 namespace App\Application\Model;
 use Illuminate\Database\Eloquent\Model;
 class CarComment extends Model
{
   public $table = "carcomment";
   public function user(){
		return $this->belongsTo(User::class, "user_id");
		}
  public function car(){
  return $this->belongsTo(Car::class, "car_id");
  }
    protected $fillable = [
        '','user_id','car_id','comment'
   ];
 }
