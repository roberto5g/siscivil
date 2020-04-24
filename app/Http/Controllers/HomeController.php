<?php

namespace App\Http\Controllers;

use App\Models\Levantamento\Levantamento;
use App\Models\Periodos\Periodos;
use Illuminate\Support\Facades\Auth;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $date = date('Y-m-d');

        $periodos = Periodos::all();
        $periodo_atual = [];

        foreach ($periodos as $periodo){
            if(strtotime($periodo->inicio) >= strtotime($date) || strtotime($periodo->fim) <= strtotime($date)){
                $periodo_atual[] = $periodo->id;
            }
        }
        $levatamento = Levantamento::where('periodo_id',$periodo_atual[0])->where('user_id',auth()->user()->id)->get();

        $status = '';
        if(count($levatamento) > 0){
            $status = "false";
        } else {
            $status = "true";
        }

        if (Auth::user()->tipo == 'administrador') {
            // vai pra tela de administração
            return view('admin.dashboard',compact('periodos'));
        } else {
            return view('usuarios.dashboard',compact('periodo_atual','status'));
        }


    }
}
