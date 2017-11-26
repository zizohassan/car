<?php
 namespace App\Application\Controllers\Admin;
 use App\Application\Requests\Admin\Maincat\AddRequestMaincat;
use App\Application\Requests\Admin\Maincat\UpdateRequestMaincat;
use App\Application\Controllers\AbstractController;
use App\Application\DataTables\MaincatsDataTable;
use App\Application\Model\Maincat;
use Yajra\Datatables\Request;
use Alert;
 class MaincatController extends AbstractController
{
    public function __construct(Maincat $model)
    {
        parent::__construct($model);
    }
     public function index(MaincatsDataTable $dataTable){
        return $dataTable->render('admin.maincat.index');
    }
     public function show($id = null){
        return $this->createOrEdit('admin.maincat.edit' , $id);
    }
      public function store(AddRequestMaincat $request){
          $item =  $this->storeOrUpdate($request , null , true);
            if(count($request->brand_id) > 0){
   $item->brand()->sync($request->brand_id);
  }
          return redirect('admin/maincat');
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
        return $this->createOrEdit('admin.maincat.show' , $id , ['fields' =>  $fields]);
    }
     public function destroy($id){
        return $this->deleteItem($id , 'admin/maincat')->with('sucess' , 'Done Delete maincat From system');
    }
}
