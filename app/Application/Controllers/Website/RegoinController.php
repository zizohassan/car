<?php

namespace App\Application\Controllers\Website;

use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Regoin;
use App\Application\Requests\Website\Regoin\AddRequestRegoin;
use App\Application\Requests\Website\Regoin\UpdateRequestRegoin;

class RegoinController extends AbstractController
{

     public function __construct(Regoin $model)
        {
            parent::__construct($model);
        }

        public function index(){
            $items = $this->model->paginate(env('PAGINATE'));
            return view('website.regoin.index' , compact('items'));
        }

        public function show($id = null){
            return $this->createOrEdit('website.regoin.edit' , $id);
        }


     public function store(AddRequestRegoin $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('regoin');
     }

     public function update($id , UpdateRequestRegoin $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


        public function getById($id){
            $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
            return $this->createOrEdit('website.regoin.show' , $id , ['fields' =>  $fields]);
        }

        public function destroy($id){
            return $this->deleteItem($id , 'regoin')->with('sucess' , 'Done Delete Regoin From system');
        }


}
