<?php

namespace App\Application\Controllers\Admin;

use App\Application\Requests\Admin\Accessories\AddRequestAccessories;
use App\Application\Requests\Admin\Accessories\UpdateRequestAccessories;
use App\Application\Controllers\AbstractController;
use App\Application\DataTables\AccessoriessDataTable;
use App\Application\Model\Accessories;
use Yajra\Datatables\Request;
use Alert;

class AccessoriesController extends AbstractController
{
    public function __construct(Accessories $model)
    {
        parent::__construct($model);
    }

    public function index(AccessoriessDataTable $dataTable){
        return $dataTable->render('admin.accessories.index');
    }

    public function show($id = null){
        return $this->createOrEdit('admin.accessories.edit' , $id);
    }

     public function store(AddRequestAccessories $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('admin/accessories');
     }

     public function update($id , UpdateRequestAccessories $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


    public function getById($id){
        $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
        return $this->createOrEdit('admin.accessories.show' , $id , ['fields' =>  $fields]);
    }

    public function destroy($id){
        return $this->deleteItem($id , 'admin/accessories')->with('sucess' , 'Done Delete accessories From system');
    }
}
