<?php
namespace App\Http\Requests\Admin\Users;


use Illuminate\Foundation\Http\FormRequest;

class UpdateUserRequest extends FormRequest
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
            'message'=>['required'],
            'email' => ['nullable','max:255','min:2','email'],
            'phone' => ['nullable','min:9','max:55'],
    
        ];
    }
}
