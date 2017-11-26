<?php

namespace App\Application\Transformers;

use Illuminate\Database\Eloquent\Model;

class CarTransformers extends AbstractTransformer
{

    public function transformModel(Model $modelOrCollection)
    {
        return [
            "id" => $modelOrCollection->id,
			"title" => $modelOrCollection->title
			"body" => $modelOrCollection->body
			"image" => $modelOrCollection->image,
			"youtube" => $modelOrCollection->youtube

        ];
    }

    public function transformModelAr(Model $modelOrCollection)
    {
        return [
           "id" => $modelOrCollection->id,
			"title" => $modelOrCollection->title
			"body" => $modelOrCollection->body
			"image" => $modelOrCollection->image,
			"youtube" => $modelOrCollection->youtube

        ];
    }

}