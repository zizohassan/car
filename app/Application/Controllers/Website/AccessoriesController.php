<?php

namespace App\Application\Controllers\Website;

use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Accessories;
use App\Application\Requests\Website\Accessories\AddRequestAccessories;
use App\Application\Requests\Website\Accessories\UpdateRequestAccessories;

class AccessoriesController extends AbstractController
{

     public function __construct(Accessories $model)
        {
            parent::__construct($model);
        }

        public function index(){
            $items = $this->model->paginate(env('PAGINATE'));
            return view('website.accessories.index' , compact('items'));
        }

        public function show($id = null){
            return $this->createOrEdit('website.accessories.edit' , $id);
        }


     public function store(AddRequestAccessories $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('accessories');
     }

     public function update($id , UpdateRequestAccessories $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


        public function getById($id){
            $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
            return $this->createOrEdit('website.accessories.show' , $id , ['fields' =>  $fields]);
        }

        public function destroy($id){
            return $this->deleteItem($id , 'accessories')->with('sucess' , 'Done Delete Accessories From system');
        }


}
