<?php

namespace App\Application\Transformers;

use Illuminate\Database\Eloquent\Model;

class RegoinTransformers extends AbstractTransformer
{

    public function transformModel(Model $modelOrCollection)
    {
        return [
            "id" => $modelOrCollection->id,
			"title" => getLangValue($modelOrCollection->title , "en")

        ];
    }

    public function transformModelAr(Model $modelOrCollection)
    {
        return [
           "id" => $modelOrCollection->id,
			"title" => getLangValue($modelOrCollection->title , "ar")

        ];
    }

}