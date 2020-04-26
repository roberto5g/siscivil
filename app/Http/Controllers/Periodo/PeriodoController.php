<?php

namespace App\Http\Controllers\Periodo;

use App\Http\Controllers\Controller;
use App\Models\Levantamento\Levantamento;
use App\Models\Om\Om;
use App\Models\Periodos\Periodos;
use Illuminate\Http\Request;


class PeriodoController extends Controller
{

    public function index()
    {

        return view('admin.cadastros.periodo.periodo');
    }

    public function cadastra(Request $request)
    {

        $periodo = Periodos::create([
            'inicio' =>$request['inicio'],
            'fim' =>  $request['fim']
        ]);
        return response()->json($request->all());
    }



    public function edita(Request $request,$id)
    {
        $periodo = Periodos::find($id);
        $periodo->inicio = $request['inicio'];
        $periodo->fim = $request['fim'];

        $periodo->save();

        return response()->json($periodo);
    }


    public function lista($id)
    {

        $levantamentos = Levantamento::where('periodo_id',$id)->get();

        $periodos = Periodos::find($id)->with(['levantamentos' => function($levantamentos){
            $levantamentos->with(['users' => function($users){
                $users->with('om');
            }]);
        }])->get();

        $retorno = [];
        foreach ($periodos as $periodo){
            if($periodo->id == $id){
                $retorno[] = $periodo;
            }
        }


        return response()->json($retorno);
    }


    public function getData()
    {
        $periodos = Periodos::all();

        return datatables()->of($periodos)->addColumn('action', function ($query) {
            return '<div class="text-center"> 
                       
                        <a href="#" class="link-simples " id="edita_'.$query->id.'" onclick="editaPeriodo('.$query->id.')"  data-inicio="' . $query->inicio . '" data-fim="' . $query->fim . '" data-toggle="modal">
                            <i class="fa fa-edit separaicon " data-toggle="tooltip" data-placement="top" title="Editar Período"></i>
                        </a>
             
                    </div>';
        })->make(true);
    }

}
