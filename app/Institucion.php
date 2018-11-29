<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institucion extends Model
{
	protected $table='instituciones';

	protected $fillable = 
		['status',
		'acronimo',
		'name',
		'_rif',
		'rif',
		'naturaleza',
		'jerarquia',
		'email',
		'tlfppal',
		'tlfseg',
		'direccion',
	];

	public function casosdeestudios()
	{
		// return $this->belongsToMany(CasoEstudio::class,'institucion_id');
		return $this->hasMany(CasoEstudio::class,'institucion_id');
	}
	public function casosdeseguimientos()
	{
		return $this->hasMany(CasoSeguimiento::class,'institucion_id');
	}
	public function estados()
	{
		return $this->belongsTo(Estado::class,'estado_id');
	}
}
