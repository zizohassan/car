<?php

namespace App\Application\Controllers\Admin;

use App\Application\Requests\Admin\Regoin\AddRequestRegoin;
use App\Application\Requests\Admin\Regoin\UpdateRequestRegoin;
use App\Application\Controllers\AbstractController;
use App\Application\DataTables\RegoinsDataTable;
use App\Application\Model\Regoin;
use Yajra\Datatables\Request;
use Alert;

class RegoinController extends AbstractController
{
    public function __construct(Regoin $model)
    {
        parent::__construct($model);
    }

    public function index(RegoinsDataTable $dataTable){
        return $dataTable->render('admin.regoin.index');
    }

    public function show($id = null){
        return $this->createOrEdit('admin.regoin.edit' , $id);
    }

     public function store(AddRequestRegoin $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('admin/regoin');
     }

     public function update($id , UpdateRequestRegoin $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


    public function getById($id){
        $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
        return $this->createOrEdit('admin.regoin.show' , $id , ['fields' =>  $fields]);
    }

    public function destroy($id){
        return $this->deleteItem($id , 'admin/regoin')->with('sucess' , 'Done Delete regoin From system');
    }
}
