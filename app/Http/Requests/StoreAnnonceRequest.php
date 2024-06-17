<?php

namespace App\Http\Requests;

use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Http\FormRequest;

class StoreAnnonceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        $user = Auth::user();
        if ($user['canPublish']) {
            return true;
        } else {
            return false;
        }    
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'content'=>['required'],
            'file'=>['image','file',]
        ];
    }
    public function messages() : array
    {
        return [
            'content.required'=>'vueillez spécifier le message de l\'annonce',
            'file.image'=>'ce fichier n\'est pas une image',
            'file.file'=>'vueillez entrer seulement un fichier'
        ];
    }  
}
