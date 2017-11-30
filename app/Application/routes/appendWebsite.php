<?php

#### brand control
Route::get('brand' , 'BrandController@index');
Route::get('brand/item/{id?}' , 'BrandController@show');
Route::post('brand/item' , 'BrandController@store');
Route::post('brand/item/{id}' , 'BrandController@update');
Route::get('brand/{id}/delete' , 'BrandController@destroy');
Route::get('brand/{id}/view' , 'BrandController@getById');

#### maincat control
Route::get('maincat' , 'MaincatController@index');
Route::get('maincat/item/{id?}' , 'MaincatController@show');
Route::post('maincat/item' , 'MaincatController@store');
Route::post('maincat/item/{id}' , 'MaincatController@update');
Route::get('maincat/{id}/delete' , 'MaincatController@destroy');
Route::get('maincat/{id}/view' , 'MaincatController@getById');


#### car control
Route::get('car' , 'CarController@index');
Route::get('car/item/{id?}' , 'CarController@show');
Route::post('car/item' , 'CarController@store');
Route::post('car/item/{id}' , 'CarController@update');
Route::get('car/{id}/delete' , 'CarController@destroy');
Route::get('car/{id}/view' , 'CarController@getById');

#### accessories control
Route::get('accessories' , 'AccessoriesController@index');
Route::get('accessories/item/{id?}' , 'AccessoriesController@show');
Route::post('accessories/item' , 'AccessoriesController@store');
Route::post('accessories/item/{id}' , 'AccessoriesController@update');
Route::get('accessories/{id}/delete' , 'AccessoriesController@destroy');
Route::get('accessories/{id}/view' , 'AccessoriesController@getById');

#### country control
Route::get('country' , 'CountryController@index');
Route::get('country/item/{id?}' , 'CountryController@show');
Route::post('country/item' , 'CountryController@store');
Route::post('country/item/{id}' , 'CountryController@update');
Route::get('country/{id}/delete' , 'CountryController@destroy');
Route::get('country/{id}/view' , 'CountryController@getById');

#### regoin control
Route::get('regoin' , 'RegoinController@index');
Route::get('regoin/item/{id?}' , 'RegoinController@show');
Route::post('regoin/item' , 'RegoinController@store');
Route::post('regoin/item/{id}' , 'RegoinController@update');
Route::get('regoin/{id}/delete' , 'RegoinController@destroy');
Route::get('regoin/{id}/view' , 'RegoinController@getById');

#### slider control
Route::get('slider' , 'SliderController@index');
Route::get('slider/item/{id?}' , 'SliderController@show');
Route::post('slider/item' , 'SliderController@store');
Route::post('slider/item/{id}' , 'SliderController@update');
Route::get('slider/{id}/delete' , 'SliderController@destroy');
Route::get('slider/{id}/view' , 'SliderController@getById');


#### car comment
Route::post('car/add/comment/{id}' , 'CarCommentController@addComment');
Route::post('car/update/comment/{id}' , 'CarCommentController@updateComment');
Route::get('car/delete/comment/{id}' , 'CarCommentController@deleteComment');
