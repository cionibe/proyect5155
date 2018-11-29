<?php

use Illuminate\Database\Seeder;

class EstudiosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('estudios')->insert([
		        'institucion_id'=>'3',
				'fec_envio'=>'2018-10-11',
				'fec_respuesta'=>'2018-11-12',
				'num_entrega'=>'001',
				'num_oficio_siss'=>'002',
				'num_exp_supervision'=>'003',
				'cot_tesoro'=>'1',
				'cot_banavih'=>'1',
				'cot_ivss'=>'1',
				'aport_trabajador'=>'7',
				'aport_patron'=>'13',
				'fijos_act'=>'64',
				'contratados_act'=>'128',
				'otros_act'=>'32',
				'nomina_adic'=>'0',
				'jubiladas'=>'16',
				'jubilados'=>'16',
				'jubilados_bs_anual'=>'32000',
				'pensionadas_i'=>'8',
				'pensionados_i'=>'8',
				'pensionados_i_bs_anual'=>'16000',
				'pensionadas_s'=>'4',
				'pensionados_s'=>'4',
				'pensionados_s_bs_anual'=>'8000',
				'reg_especial'=>'0',
				'dec_1440'=>'0',
				'sin_regimen'=>'0',
				'ley_trabajo'=>'1',
				'con_colectivo'=>'0',
				'tod_beneficio'=>'1',
				'orig_recursos'=>'gubernamental',
				'doc_rif'=>'1',
				'doc_conv_colectiva'=>'0',
				'doc_acta_constitutiva'=>'0',
				'doc_resolucion'=>'0',
				'doc_decreto1440'=>'0',
				'doc_digital'=>'1',
				'doc_fisico'=>'1',
				'observaciones'=>'ninguna, solo es una prueba',
        ]);
    }
}
