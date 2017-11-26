<?php

namespace App\Application\Transformers;

use Illuminate\Database\Eloquent\Model;

class MaincatTransformers extends AbstractTransformer
{

    public function transformModel(Model $modelOrCollection)
    {
        return [
            "id" => $modelOrCollection->id,
			"title" => getLangValue($modelOrCollection->title , "en"),
			"image" => $modelOrCollection->image

        ];
    }

    public function transformModelAr(Model $modelOrCollection)
    {
        return [
           "id" => $modelOrCollection->id,
			"title" => getLangValue($modelOrCollection->title , "ar"),
			"image" => $modelOrCollection->image

        ];
    }

}