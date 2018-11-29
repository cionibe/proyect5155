<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Responsable extends Model
{
	protected $table='responsables';
    protected $fillable = [
        'institucion_id',
        'status',
        'cedula',
        'cargo',
        'dpto',
        'name1',
        'name2',
        'lastname1',
        'lastname2',
        'tlf',
        'email_r',
    ];
	public function institucion()
	{
		return $this->belongsTo(Institucion::class,'institucion_id');
	}
}
