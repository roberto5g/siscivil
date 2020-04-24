<?php

namespace App\Http\Controllers\Levantamento;

use App\Http\Controllers\Controller;
use App\Models\Levantamento\Levantamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class LevantamentoController extends Controller
{


    public function cadastra(Request $request)
    {

        $hoje = date('d/m/Y');
        $date = date('Y-m-d');

        $data1 = '2013-05-21';
        $data2 = '2013-05-22';

        $retorno = '';

        if (strtotime($data1) > strtotime($data2)) {
            $retorno = 'A data 1 é maior que a data 2.';
        } elseif (strtotime($data1) == strtotime($data2)) {
            $retorno = 'A data 1 é igual a data 2.';
        } else {
            $retorno = 'A data 1 é menor a data 2.';
        }

        /*$levantamento = Levantamento::create([
            'confirmado' => $request['confirmado'],
            'responsaveis' => $request['responsaveis'],
            'idosos' => $request['idosos'],
            'imunodeficiente' => $request['imunodeficiente'],
            'gestantes' => $request['gestantes'],
            'idade_escolar' => $request['idade_escolar'],
            'nao_presentes' => $request['nao_presentes'],
            'user_id' => Auth::user()->id,
            'periodo_id' => 1,
        ]);*/
        return response()->json($date);
    }


    public function edita($id)
    {
        $levantamento = Levantamento::find($id);

        return response()->json($levantamento);
    }


    public function remove($id)
    {
        $levantamento = Levantamento::find($id);
        $levantamento->delete();
        return response()->json('ok');
    }

    public function lista()
    {
        $levantamento = Levantamento::all();
        return response()->json($levantamento);
    }


}
