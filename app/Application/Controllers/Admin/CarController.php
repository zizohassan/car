<?php
 namespace App\Application\Controllers\Admin;
 use App\Application\Requests\Admin\Car\AddRequestCar;
use App\Application\Requests\Admin\Car\UpdateRequestCar;
use App\Application\Controllers\AbstractController;
use App\Application\DataTables\CarsDataTable;
use App\Application\Model\Car;
use Yajra\Datatables\Request;
use Alert;
 class CarController extends AbstractController
{
    public function __construct(Car $model)
    {
        parent::__construct($model);
    }
     public function index(CarsDataTable $dataTable){
        return $dataTable->render('admin.car.index');
    }
     public function show($id = null){
        return $this->createOrEdit('admin.car.edit' , $id);
    }
      public function store(AddRequestCar $request){
          $item =  $this->storeOrUpdate($request , null , true);
            if(count($request->accessories_id) > 0){
   $item->accessories()->sync($request->accessories_id);
  }
          return redirect('admin/car');
     }
      public function update($id , UpdateRequestCar $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          		if(count($request->accessories_id) > 0){
			$item->accessories()->sync($request->accessories_id);
		}
          return redirect()->back();
     }
      public function getById($id){
        $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
        return $this->createOrEdit('admin.car.show' , $id , ['fields' =>  $fields]);
    }
     public function destroy($id){
        return $this->deleteItem($id , 'admin/car')->with('sucess' , 'Done Delete car From system');
    }
}
