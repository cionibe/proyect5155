<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InstitucionStoreRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name'      => 'required|string|max:512|unique:instituciones,name',
            'acronimo'  => 'string|max:32',
            '_rif'      => 'required',
            'rif'       => 'required|numeric|digits:9|unique:instituciones,rif',
            'naturaleza'=> 'string|max:32',
            'jerarquia' => 'string|max:32',
            'tlfppal'   => 'required|numeric|digits_between:10,11|unique:instituciones,tlfppal',
            'tlfseg'    => 'numeric|digits_between:10,11',
            'email'     => 'required|string|email|max:255|unique:instituciones,email',
            'direccion' => 'required|string|max:512',
        ];
    }
}
