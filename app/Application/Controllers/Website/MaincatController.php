<?php
 namespace App\Application\Controllers\Website;
 use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Maincat;
use App\Application\Requests\Website\Maincat\AddRequestMaincat;
use App\Application\Requests\Website\Maincat\UpdateRequestMaincat;
 class MaincatController extends AbstractController
{
      public function __construct(Maincat $model)
        {
            parent::__construct($model);
        }
         public function index(){
            $items = $this->model->paginate(env('PAGINATE'));
            return view('website.maincat.index' , compact('items'));
        }
         public function show($id = null){
            return $this->createOrEdit('website.maincat.edit' , $id);
        }
       public function store(AddRequestMaincat $request){
          $item =  $this->storeOrUpdate($request , null , true);
            if(count($request->brand_id) > 0){
   $item->brand()->sync($request->brand_id);
  }
          return redirect('maincat');
     }
      public function update($id , UpdateRequestMaincat $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          		if(count($request->brand_id) > 0){
			$item->brand()->sync($request->brand_id);
		}
          return redirect()->back();
     }
          public function getById($id){
            $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
            return $this->createOrEdit('website.maincat.show' , $id , ['fields' =>  $fields]);
        }
         public function destroy($id){
            return $this->deleteItem($id , 'maincat')->with('sucess' , 'Done Delete Maincat From system');
        }
  }
