<?php

namespace App\Application\Controllers\Website;

use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Slider;
use App\Application\Requests\Website\Slider\AddRequestSlider;
use App\Application\Requests\Website\Slider\UpdateRequestSlider;

class SliderController extends AbstractController
{

     public function __construct(Slider $model)
        {
            parent::__construct($model);
        }

        public function index(){
            $items = $this->model->paginate(env('PAGINATE'));
            return view('website.slider.index' , compact('items'));
        }

        public function show($id = null){
            return $this->createOrEdit('website.slider.edit' , $id);
        }


     public function store(AddRequestSlider $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('slider');
     }

     public function update($id , UpdateRequestSlider $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


        public function getById($id){
            $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
            return $this->createOrEdit('website.slider.show' , $id , ['fields' =>  $fields]);
        }

        public function destroy($id){
            return $this->deleteItem($id , 'slider')->with('sucess' , 'Done Delete Slider From system');
        }


}
