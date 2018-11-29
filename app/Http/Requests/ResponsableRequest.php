<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ResponsableRequest extends FormRequest
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
            'institucion_id'    => 'required',
            'name1'             => 'required|alpha|string|min:3|max:255',
            'lastname1'         => 'required|alpha|string|min:3|max:255',
            'cedula'            => 'numeric|required|unique:responsables|digits_between:6,8',
            'dpto'              => 'required|string|max:255',
            'cargo'             => 'required|string|max:255',
            'tlf'               => 'numeric|required|digits_between:11,11',
            'email_r'           => 'required|string|email|max:255',

        ];
    }
}
