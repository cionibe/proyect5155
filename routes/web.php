<?php

use App\Institucion;

Route::get('/', function (){ return redirect('/');});
Route::get('/',						'f413\InstitucionController@welcome');
Route::resource('instituciones',	'f413\InstitucionController');
Route::resource('estudios',			'f413\EstudioController');
Route::resource('responsables',		'f413\ResponsableController');
Route::resource('usuarios',			'f413\UserController');
Route::get('estudio+/{idinst}',['as'=>'estudio+','uses'=>'f413\EstudioController@create',]);
Route::get('responsable+/{idinst}',['as'=>'responsable+','uses'=>'f413\ResponsableController@create',]);
Route::get('nominas', 'f413\InstitucionController@pdf_nomina')
	->name('nominas.pdf');
Route::get('jubilados', 'f413\InstitucionController@pdf_jubilados')
	->name('jubilados.pdf');
Route::get('pensionados', 'f413\InstitucionController@pdf_pensionados')
	->name('pensionados.pdf');
Auth::routes();
// Route::get('/home', 'HomeController@index')->name('home');
// Route::get('/usuarios',		'Auth\RegisterController@index');
////////////////////////////////////////////////////////////////////////


Route::get('/indonesia','CountryController@provinces');

Route::get('/json-regencies','CountryController@regencies');
