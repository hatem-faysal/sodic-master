<?php

namespace App\Http\Requests\Frontend;

use Illuminate\Foundation\Http\FormRequest;

class ImagenRequest extends FormRequest
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
        return [
            'name'=>['required','min:2','max:2000'],
            'socialmedia'=>['required'],
            'socialhandle'=>['required','min:2','max:2000'],
            'phone'=>['required','min:2','max:50'],
            'message'=>['required',,'min:2','max:2000'],
        ];
    }
}
