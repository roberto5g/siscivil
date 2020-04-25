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



        $levantamento = Levantamento::create([
            'confirmado' => $request['confirmado'],
            'responsaveis' => $request['responsaveis'],
            'idosos' => $request['idosos'],
            'imunodeficiente' => $request['imunodeficiente'],
            'gestantes' => $request['gestantes'],
            'idade_escolar' => $request['idade_escolar'],
            'nao_presentes' => $request['nao_presentes'],
            'user_id' => Auth::user()->id,
            'periodo_id' => 1,
        ]);
        return response()->json($levantamento);
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
