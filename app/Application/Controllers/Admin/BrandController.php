<?php

namespace App\Application\Controllers\Admin;

use App\Application\Requests\Admin\Brand\AddRequestBrand;
use App\Application\Requests\Admin\Brand\UpdateRequestBrand;
use App\Application\Controllers\AbstractController;
use App\Application\DataTables\BrandsDataTable;
use App\Application\Model\Brand;
use Yajra\Datatables\Request;
use Alert;

class BrandController extends AbstractController
{
    public function __construct(Brand $model)
    {
        parent::__construct($model);
    }

    public function index(BrandsDataTable $dataTable){
        return $dataTable->render('admin.brand.index');
    }

    public function show($id = null){
        return $this->createOrEdit('admin.brand.edit' , $id);
    }

     public function store(AddRequestBrand $request){
          $item =  $this->storeOrUpdate($request , null , true);
          return redirect('admin/brand');
     }

     public function update($id , UpdateRequestBrand $request){
          $item =  $this->storeOrUpdate($request , $id , true);
          return redirect()->back();
     }


    public function getById($id){
        $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
        return $this->createOrEdit('admin.brand.show' , $id , ['fields' =>  $fields]);
    }

    public function destroy($id){
        return $this->deleteItem($id , 'admin/brand')->with('sucess' , 'Done Delete brand From system');
    }
}
