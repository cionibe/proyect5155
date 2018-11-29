<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InstitucionUpdateRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            // 'name'      => 'required|string|max:512|unique:instituciones,name,'.$this->institucion,
            'acronimo'  => 'string|max:32',
            '_rif'      => 'required',
            // 'rif'       => 'required|numeric|digits:9|unique:instituciones,rif,'.$this->institucion,
            'naturaleza'=> 'string|max:32',
            'jerarquia' => 'string|max:32',
            // 'tlfppal'   => 'required|numeric|digits_between:10,11|unique:instituciones,tlfppal,'.$this->institucion,
            'tlfseg'    => 'numeric|digits_between:10,11',
            // 'email'     => 'required|string|email|max:255|unique:instituciones,email,'.$this->institucion,
            'direccion' => 'required|string|max:512',
        ];
    }
}
