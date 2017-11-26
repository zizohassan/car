<?php
Route::get('icons', 'HomeController@icons');
Route::get('docs', 'HomeController@apiDocs');

### commands
Route::get('commands', 'CommandsController@index');
Route::post('command/exe', 'CommandsController@exe');
Route::get('laravel/commands', 'CommandsController@command');
Route::post('command/otherExe', 'CommandsController@otherExe');

### relations
Route::get('relation', 'RelationController@index');
Route::post('relation/exe', 'RelationController@exe');
Route::get('getCols/{model}', 'RelationController@getCols');
Route::post('relation/rollback', 'RelationController@rollback');

#### user control
Route::get('user', 'UserController@index');
Route::get('user/item/{id?}', 'UserController@show');
Route::post('user/item', 'UserController@store');
Route::post('user/item/{id}', 'UserController@update');
Route::get('user/{id}/delete', 'UserController@destroy');
Route::get('user/{id}/view', 'UserController@getById');

#### translation
Route::get('translation' , 'TranslationController@index');
Route::get('translation/readFile/{file}' , 'TranslationController@readFile');
Route::post('translation/save' , 'TranslationController@save');
Route::get('translation/getAllContent/{file}' , 'TranslationController@getAllContent');
Route::post('translation/both/save' , 'TranslationController@bothSave');

#### permissions
Route::get('custom-permissions' , 'Development\CustomPermissionsController@index');
Route::get('custom-permissions/readFile/{file}' , 'Development\CustomPermissionsController@readFile');
Route::post('custom-permissions/save' , 'Development\CustomPermissionsController@save');
Route::get('getControllerByType/{type}' , 'Development\PermissionController@getControllerByType');
Route::get('getMethodByController/{controller}/{type}' , 'Development\PermissionController@getMethodByController');


#### group control
Route::get('group', 'GroupController@index');
Route::get('group/item/{id?}', 'GroupController@show');
Route::post('group/item', 'GroupController@store');
Route::post('group/item/{id}', 'GroupController@update');
Route::get('group/{id}/delete', 'GroupController@destroy');
Route::get('group/{id}/view', 'GroupController@getById');
#### role control
Route::get('role', 'RoleController@index');
Route::get('role/item/{id?}', 'RoleController@show');
Route::post('role/item', 'RoleController@store');
Route::post('role/item/{id}', 'RoleController@update');
Route::get('role/{id}/delete', 'RoleController@destroy');
Route::get('role/{id}/view', 'RoleController@getById');
#### permission control
Route::get('permission', 'Development\PermissionController@index');
Route::get('permission/item/{id?}', 'Development\PermissionController@show');
Route::post('permission/item', 'Development\PermissionController@store');
Route::post('permission/item/{id}', 'Development\PermissionController@update');
Route::get('permission/{id}/delete', 'Development\PermissionController@destroy');
Route::get('permission/{id}/view', 'Development\PermissionController@getById');
#### home control
Route::get('home/{pages?}/{limit?}', 'HomeController@index');
#### setting control
Route::get('setting', 'SettingController@index');
Route::get('setting/item/{id?}', 'SettingController@show');
Route::post('setting/item', 'SettingController@store');
Route::post('setting/item/{id}', 'SettingController@update');
Route::get('setting/{id}/delete', 'SettingController@destroy');
Route::get('setting/{id}/view', 'SettingController@getById');
#### menu control
Route::get('menu', 'MenuController@index');
Route::get('menu/item/{id?}', 'MenuController@show');
Route::post('menu/item', 'MenuController@store');
Route::post('menu/item/{id}', 'MenuController@update');
Route::get('menu/{id}/delete', 'MenuController@destroy');
Route::get('menu/{id}/view', 'MenuController@getById');
Route::post('update/menuItem', 'MenuController@menuItem');
Route::post('addNewItemToMenu', 'MenuController@addNewItemToMenu');
Route::get('deleteMenuItem/{id}', 'MenuController@deleteMenuItem');
Route::get('getItemInfo/{id}', 'MenuController@getItemInfo');
Route::post('updateOneMenuItem', 'MenuController@updateOneMenuItem');
#### page control
Route::get('page', 'PageController@index');
Route::get('page/item/{id?}', 'PageController@show');
Route::post('page/item', 'PageController@store');
Route::post('page/item/{id}', 'PageController@update');
Route::get('page/{id}/delete', 'PageController@destroy');
Route::get('page/{id}/view', 'PageController@getById');
#### log control
Route::get('log', 'LogController@index');
Route::get('log/item/{id?}', 'LogController@show');
Route::post('log/item', 'LogController@store');
Route::post('log/item/{id}', 'LogController@update');
Route::get('log/{id}/delete', 'LogController@destroy');
Route::get('log/{id}/view', 'LogController@getById');
#### categorie control
Route::get('categorie', 'CategorieController@index');
Route::get('categorie/item/{id?}', 'CategorieController@show');
Route::post('categorie/item', 'CategorieController@store');
Route::post('categorie/item/{id}', 'CategorieController@update');
Route::get('categorie/{id}/delete', 'CategorieController@destroy');
Route::get('categorie/{id}/view', 'CategorieController@getById');
#### contact control
Route::get('contact', 'ContactController@index');
Route::get('contact/item/{id?}', 'ContactController@show');
Route::post('contact/item', 'ContactController@store');
Route::post('contact/item/{id}', 'ContactController@update');
Route::get('contact/{id}/delete', 'ContactController@destroy');
Route::get('contact/{id}/view', 'ContactController@getById');
Route::post('contact/replay/{id}', 'ContactController@replayEmail');





























































































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