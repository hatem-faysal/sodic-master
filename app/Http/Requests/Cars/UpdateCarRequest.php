<?php

namespace App\Http\Requests\Cars;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCarRequest extends FormRequest
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
            'name.*' => ['required','unique:cars,slug,'.$id,'max:255','min:2'],
            'country_id' => ['nullable'],
            'city_id' => ['nullable'],
            'district_id' => ['nullable'],
            'type' => ['required'],
            'stars' => ['required'],
            'seats' => ['required'],
            'price' => ['required'],
            'status' => ['nullable'],
            'sort' => ['nullable'],
        ];
    }
}
