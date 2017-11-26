<?php

namespace App\Application\Controllers\Website;

use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Brand;
use App\Application\Requests\Website\Brand\AddRequestBrand;
use App\Application\Requests\Website\Brand\UpdateRequestBrand;

class BrandController extends AbstractController
{

     public function __construct(Brand $model)
        {
            parent::__construct($model);
        }

        public function index(){
            $items = $this->model->paginate(env('PAGINATE'));
            return view('website.brand.index' , compact('items'));
        }

        public function show($id = null){
            return $this->createOrEdit('website.brand.edit' , $id);
        }


     public function store(AddRequestBrand $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('brand');
     }

     public function update($id , UpdateRequestBrand $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


        public function getById($id){
            $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
            return $this->createOrEdit('website.brand.show' , $id , ['fields' =>  $fields]);
        }

        public function destroy($id){
            return $this->deleteItem($id , 'brand')->with('sucess' , 'Done Delete Brand From system');
        }


}
