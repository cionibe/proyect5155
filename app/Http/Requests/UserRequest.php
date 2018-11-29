<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'name1'     => 'required|alpha|string|min:3|max:255',
            'lastname1' => 'required|alpha|string|min:3|max:255',
            'cedula'    => 'numeric|required|unique:users|digits_between:6,8',
            'tlf'       => 'numeric|required|digits_between:11,11',
            'email'     => 'required|string|email|max:255',
            'password'  => 'required|string|min:6|confirmed',
            'rol'       => 'required',

        ];
    }


}
