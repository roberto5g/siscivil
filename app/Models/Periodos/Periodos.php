<?php

namespace App\Models\Periodos;


use Illuminate\Database\Eloquent\Model;

class Periodos extends Model
{
    protected
        $table = 'periodos';

    public $timestamps = false;

    protected
        $fillable = [
        'inicio',
        'fim'
    ];


    protected
        $guarded = ['id'];

}
