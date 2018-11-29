<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EstudioRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'institucion_id'        => 'required',
            'fec_envio'             => 'required|after:2013-01-01',
            'fec_respuesta'         => 'required|after:2013-01-01|different:fec_envio',
            'num_entrega'           => 'numeric|required|min:0',
            'num_oficio_siss'       => 'numeric|required|min:0',
            'num_exp_supervision'   => 'numeric|required|min:0',
            'aport_trabajador'      => 'numeric|required|min:0|max:999999',
            'aport_patron'          => 'numeric|required|min:0|max:999999',
            'fijos_act'             => 'numeric|required|min:0|max:999999',
            'contratados_act'       => 'numeric|required|min:0|max:999999',
            'otros_act'             => 'numeric|required|min:0|max:999999',
            'nomina_adic'           => 'numeric|required|min:0|max:999999',
            'jubiladas'             => 'numeric|required|min:0|max:999999',
            'jubilados'             => 'numeric|required|min:0|max:999999',
            'jubilados_bs_anual'    => 'numeric|required|min:0|max:999999999',
            'pensionadas_i'         => 'numeric|required|min:0|max:999999',
            'pensionados_i'         => 'numeric|required|min:0|max:999999',
            'pensionados_i_bs_anual'=> 'numeric|required|min:0|max:999999999',
            'pensionadas_s'         => 'numeric|required|min:0|max:999999',
            'pensionados_s'         => 'numeric|required|min:0|max:999999',
            'pensionados_s_bs_anual'=> 'numeric|required|min:0|max:999999999',
        ];
    }
}
