<?php

namespace App\Http\Requests\Location\Country;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCountryRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        $id= Request()->segment(4);
        return [
            'name.*' => ['required','unique:countries,slug,'.$id,'max:255','min:2'],
            'status' => ['nullable'],
        ];
    }
}