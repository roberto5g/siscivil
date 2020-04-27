<?php

namespace App\Http\Controllers;

use App\Models\Levantamento\Levantamento;
use App\Models\Om\Om;
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
        $periodos = Periodos::all();


        // vai pra tela de administração
        $oms = Om::all();


        // tela dos usuarios
        $date = date('Y-m-d');
        $periodo_atual = '';
        $proximo = [];
        if ($periodos) {
            foreach ($periodos as $periodo) {
                if (strtotime($date) >= strtotime($periodo->inicio) && strtotime($date) < strtotime($periodo->fim)) {
                    $periodo_atual = $periodo->id;
                } else if (strtotime($date) < strtotime($periodo->inicio) && strtotime($date) < strtotime($periodo->fim)) {
                    $proximo[] = $periodo;
                }
            }
        } else {
            $periodo_atual = null;
        }

        if ($proximo != null) {
            $proximo = $proximo[0];
        } else {
            $proximo = null;
        }

        if ($periodo_atual != null) {
            $levatamento = Levantamento::where('periodo_id', $periodo_atual)->where('user_id', auth()->user()->id)->count();

            if ($levatamento > 0) {
                $status = "false";
            } else {
                $status = 'true';
            }
        } else {
            $periodo_atual = 0;
            $status = "true";
        }

        if (Auth::user()->tipo == 'administrador') {
            return view('admin.dashboard', compact('periodos', 'oms', 'periodo_atual', 'status', 'proximo'));
        } else {
            return view('usuarios.dashboard', compact('periodo_atual', 'status', 'proximo'));
        }


    }
}
