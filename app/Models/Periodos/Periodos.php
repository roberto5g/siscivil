<?php

namespace App\Models\Periodos;


use App\Models\Levantamento\Levantamento;
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

    public function levantamentos()
    {
        return $this->hasMany(Levantamento::class,'periodo_id');
    }
}
