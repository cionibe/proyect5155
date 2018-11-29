<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estudio extends Model
{
	protected $table ='estudios';
	protected $fillable = 
		[
			'institucion_id',
			'fec_envio',
			'fec_respuesta',
			'num_entrega',
			'num_oficio_siss',
			'num_exp_supervision',
			'cot_tesoro',
			'cot_banavih',
			'cot_ivss',
			'aport_trabajador',
			'aport_patron',
			'fijos_act',
			'contratados_act',
			'otros_act',
			'nomina_adic',
			'jubiladas',
			'jubilados',
			'jubilados_bs_anual',
			'pensionadas_i',
			'pensionados_i',
			'pensionados_i_bs_anual',
			'pensionadas_s',
			'pensionados_s',
			'pensionados_s_bs_anual',
////////////////////
			'fec_seguimiento',
			'reg_especial',
			'dec_1440',
			'sin_regimen',
			'ley_trabajo',
			'con_colectivo',
			'tod_beneficio',
			'orig_recursos',
			'doc_rif',
			'doc_conv_colectiva',
			'doc_acta_constitutiva',
			'doc_resolucion',
			'doc_decreto1440',
			'doc_digital',
			'doc_fisico',
			'observaciones'
		];


	public function institucion()
	{
		return $this->belongsTo(Institucion::class,'institucion_id');
		// return $this->hasMany(Institucion::class,'institucion_id');
	}

}
