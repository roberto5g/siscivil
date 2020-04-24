<?php

namespace App\Models\Levantamento;

use App\User;
use Illuminate\Database\Eloquent\Model;


class Levantamento extends Model
{
    protected
        $table = 'levantamento';

    protected
        $fillable = [
        'confirmado',
        'responsaveis',
        'idosos',
        'imunodeficiente',
        'gestantes',
        'idade_escolar',
        'nao_presentes',
        'user_id',
        'periodo_id',
    ];

    protected
        $guarded = ['id'];


}
