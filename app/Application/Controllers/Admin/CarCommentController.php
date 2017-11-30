<?php

namespace App\Application\Controllers\Admin;

use \App\Application\Requests\Admin\CarComment\AddRequestCarComment;
use \App\Application\Requests\Admin\CarComment\UpdateRequestCarComment;
use App\Application\Controllers\AbstractController;
use App\Application\Model\CarComment;
use App\Application\Model\Car;
use Yajra\Datatables\Request;
use Alert;

class CarCommentController extends AbstractController
{

   public function __construct(CarComment $model , Car $parent)
    {
        parent::__construct($model);
        $this->parent = $parent;
    }

    public function addComment($id , AddRequestCarComment $request){
        $this->parent->findOrFail($id);
        $array = [
            'comment' => $request->comment,
            'user_id' => auth()->user()->id,
            'car_id' => $id
        ];
        $this->model->create($array);
        return redirect('admin/car/'.$id.'/view');
    }

    public function updateComment($id , UpdateRequestCarComment $request){
        $item =  $this->model->findOrFail($id);
        if($item->user_id != auth()->user()->id)
            return redirect('admin/car/'.$item->car_id.'/view');
        $array = [
            'comment' => $request->comment
        ];
        $item->update($array);
        return redirect('admin/car/'.$item->car_id.'/view');
    }

    public function deleteComment($id){
        $item =  $this->model->findOrFail($id);
        if($item->user_id != auth()->user()->id)
            return redirect('admin/car/'.$item->car_id.'/view');
        $item->delete();
        return redirect('admin/car/'.$item->car_id.'/view');
    }

}