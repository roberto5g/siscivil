<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Route::get('/admin/gerencia/verificaemail/{acao}', 'User\UserController@verificaEmail');
Route::get('/admin/gerencia/verificacpf/{acao}', 'User\UserController@verificaCpf');;

Route::get('/{hash}/conta', 'Candidato\DadosBasicosController@ativarConta');
Route::post('/candidato/gerencia/recuperar/senha', 'Auth\ResetPasswordController@recuperarSenha')->name('recuperar.senha');
Route::get('/{hashuser}/recovery/{hashrecovery}', 'Auth\ResetPasswordController@index');
Route::post('/redefinir/senha/usuario', 'Auth\ResetPasswordController@redefinirSenha');


/* rotas autenticadas */
Route::middleware('auth')->group(function () {

    Route::get('/', 'HomeController@index');


    // cadastro om
    Route::get('/admin/gerencia/om', 'Om\OmController@index')->name('om');
    Route::post('/admin/gerencia/cadastro/om', 'Om\OmController@cadastra')->name('cadastro.om');
    Route::get('/admin/gerencia/lista/om', 'Om\OmController@getData');
    Route::get('/admin/gerencia/om/lista', 'Om\OmController@lista');
    Route::get('/admin/gerencia/edita/om/{id}', 'Om\OmController@edita');
    Route::post('/admin/gerencia/edita/om/{id}', 'Om\OmController@update');
    Route::post('/admin/gerencia/remove/om/{id}', 'Om\OmController@remove');


    // usuario
    Route::get('/admin/gerencia/usuario', 'User\UserController@index')->name('usuario');
    Route::get('/admin/gerencia/getdata/usuario', 'User\UserController@getData');
    Route::post('/admin/gerencia/cadastra/usuario', 'User\UserController@cadastra');
    Route::post('/admin/gerencia/edita/usuario/{id}', 'User\UserController@edita');
    Route::post('/admin/gerencia/reseta/usuario/{id}', 'User\UserController@resetaSenha');
    Route::post('/admin/gerencia/updatesenha/usuario/{id}', 'User\UserController@updateSenha');
    Route::post('/admin/gerencia/remove/usuario/{id}', 'User\UserController@remove');

    //periodo
    Route::get('/admin/gerencia/periodo', 'Periodo\PeriodoController@index')->name('periodo');
    Route::post('/admin/gerencia/cadastro/periodo', 'Periodo\PeriodoController@cadastra');
    Route::post('/admin/gerencia/edita/periodo/{id}', 'Periodo\PeriodoController@edita');
    Route::get('/admin/gerencia/lista/periodo/getdata', 'Periodo\PeriodoController@getData');
    Route::get('/admin/gerencia/lista/periodo/{id}', 'Periodo\PeriodoController@lista');


    //levamntamento
    Route::post('/usuario/cadastra/levantamento', 'Levantamento\LevantamentoController@cadastra');
    Route::get('/usuario/lista/levantamento', 'Levantamento\LevantamentoController@getData');

});
// Section Pages
Route::view('/errors/400', 'errors.400');
Route::view('/sample/error404', 'errors.404')->name('error404');
Route::view('/sample/error500', 'errors.500')->name('error500');