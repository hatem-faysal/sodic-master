<?php

namespace App\Http\Requests\Imagine;

use Illuminate\Foundation\Http\FormRequest;

class UpdateImagineRequest extends FormRequest
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
        'name' => ['required','max:255','min:2'],
        'user_id' => ['nullable'],
        'image'=>['nullable','mimes:png,jpg,jpeg','max:1024'],
        ];
    }
}
