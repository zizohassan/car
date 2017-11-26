<?php

namespace App\Application\Model;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{

  public $table = "slider";

   protected $fillable = [
        'title','body','image'
   ];

}
