<?php

#user
Route::post('users/login' , 'UserApi@login');
Route::get('users/getById/{id}', 'UserApi@getById');
Route::get('users/delete/{id}', 'UserApi@delete');
Route::post('users/add', 'UserApi@add');
Route::post('users/update', 'UserApi@update');
Route::get('users/{limit?}/{offset?}', 'UserApi@index');
Route::get('users/getUserByToken' , 'UserApi@getUserByToken');

#page
Route::get('page/getById/{id}/{lang?}', 'PageApi@getById');
Route::get('page/delete/{id}', 'PageApi@delete');
Route::post('page/add', 'PageApi@add');
Route::post('page/update/{id}', 'PageApi@update');
Route::get('page/{limit?}/{offset?}/{lang?}', 'PageApi@index');

#categorie
Route::get('categorie/getById/{id}/{lang?}', 'CategorieApi@getById');
Route::get('categorie/delete/{id}', 'CategorieApi@delete');
Route::post('categorie/add', 'CategorieApi@add');
Route::post('categorie/update/{id}', 'CategorieApi@update');
Route::get('categorie/{limit?}/{offset?}/{lang?}', 'CategorieApi@index');



#car
Route::get('car/getById/{id}/{lang?}', 'CarApi@getById');
Route::get('car/delete/{id}', 'CarApi@delete');
Route::post('car/add', 'CarApi@add');
Route::post('car/update/{id}', 'CarApi@update');
Route::get('car/{limit?}/{offset?}/{lang?}', 'CarApi@index');

#accessories
Route::get('accessories/getById/{id}/{lang?}', 'AccessoriesApi@getById');
Route::get('accessories/delete/{id}', 'AccessoriesApi@delete');
Route::post('accessories/add', 'AccessoriesApi@add');
Route::post('accessories/update/{id}', 'AccessoriesApi@update');
Route::get('accessories/{limit?}/{offset?}/{lang?}', 'AccessoriesApi@index');

#country
Route::get('country/getById/{id}/{lang?}', 'CountryApi@getById');
Route::get('country/delete/{id}', 'CountryApi@delete');
Route::post('country/add', 'CountryApi@add');
Route::post('country/update/{id}', 'CountryApi@update');
Route::get('country/{limit?}/{offset?}/{lang?}', 'CountryApi@index');

#regoin
Route::get('regoin/getById/{id}/{lang?}', 'RegoinApi@getById');
Route::get('regoin/delete/{id}', 'RegoinApi@delete');
Route::post('regoin/add', 'RegoinApi@add');
Route::post('regoin/update/{id}', 'RegoinApi@update');
Route::get('regoin/{limit?}/{offset?}/{lang?}', 'RegoinApi@index');

#slider
Route::get('slider/getById/{id}/{lang?}', 'SliderApi@getById');
Route::get('slider/delete/{id}', 'SliderApi@delete');
Route::post('slider/add', 'SliderApi@add');
Route::post('slider/update/{id}', 'SliderApi@update');
Route::get('slider/{limit?}/{offset?}/{lang?}', 'SliderApi@index');

