<?php

namespace App\Application\Controllers\Website;

use App\Application\Controllers\AbstractController;
use Alert;
use App\Application\Model\Country;
use App\Application\Requests\Website\Country\AddRequestCountry;
use App\Application\Requests\Website\Country\UpdateRequestCountry;

class CountryController extends AbstractController
{

    public function __construct(Country $model)
    {
        parent::__construct($model);
    }

    public function index()
    {
        $items = $this->model->paginate(env('PAGINATE'));
        return view('website.country.index', compact('items'));
    }

    public function show($id = null)
    {
        return $this->createOrEdit('website.country.edit', $id);
    }


    public function store(AddRequestCountry $request)
    {
        $item = $this->storeOrUpdate($request, null, true);
        return redirect('country');
    }

    public function update($id, UpdateRequestCountry $request)
    {
        $item = $this->storeOrUpdate($request, $id, true);
        return redirect()->back();
    }


    public function getById($id)
    {
        $fields = $this->model->getConnection()->getSchemaBuilder()->getColumnListing($this->model->getTable());
        return $this->createOrEdit('website.country.show', $id, ['fields' => $fields]);
    }

    public function destroy($id)
    {
        return $this->deleteItem($id, 'country')->with('sucess', 'Done Delete Country From system');
    }


}
