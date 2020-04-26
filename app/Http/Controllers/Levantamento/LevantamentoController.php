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
            'periodo_id' => $request['periodo'],
        ]);
        return back();
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

    public function getData()
    {
        $levantamentos = Levantamento::where('user_id',Auth::user()->id)->with('periodo')->get();

        return datatables()->of($levantamentos)->addColumn('action', function ($query) {
            return '<div class="text-center"> 
                       
                        <a href="#" class="link-simples " id="detalhes_'.$query->id.'" onclick="detalhes('.$query->id.')"  
                            data-confirmado="' . $query->confirmado . '" 
                            data-responsaveis="' . $query->responsaveis . '" 
                            data-idosos="' . $query->idosos . '" 
                            data-imunodeficiente="' . $query->imunodeficiente . '" 
                            data-gestantes="' . $query->gestantes . '" 
                            data-idade_escolar="' . $query->idade_escolar . '" 
                            data-nao_presentes="' . $query->nao_presentes . '" 
                            data-toggle="modal">
                            <i class="fa fa-search separaicon " data-toggle="tooltip" data-placement="top" title="Detalhes"></i>
                        </a>
             
                    </div>';
        })->make(true);
    }

}
