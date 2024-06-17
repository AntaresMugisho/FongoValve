<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class communicareRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'num'=>['numeric','required',],
            'concern'=>['string','required',],
            'title'=> ['required','string','min:50'],
            'signedBy'=>['required'],
            'delai'=>['date','nullable'],
            'mssg'=>['required','string','min:100'],
            'file'=>['file','image','nullable']
        ];
    }
    public function messages () : array
    {
        return [
            'num.numeric'=> 'ce champ doit contenir un nombre !',
            'num.required'=>'le numéro ne doit pas être vide !',
            'concern.string'=>'ce champ doit contenir une chaîne de caractères',
            'concern.required'=>'spécifier à qui ce communiqué',
            'title.required'=>'le communiqué doit avoir un titre ',
            'title.string'=>'le titre doit être une chaîne de caractères',
            'title.min'=>'entrer au moins un  titre de 50 caractères',
            'signedBy.required'=>'vueillez spécifier les signateurs',
            'delai.date'=>'cette valeur n\'est pas dans un format date !',
            'mssg.required'=>'vueillez saisir un message !',
            'mssg.string'=>'ce champ doit contenir une chaîne de caractères',
            'mssg.min'=>'entrer au moins un mssg de 100 caractères',
            'file.file'=>'ce prend ne prend que les fichers',
            'file.image'=>'ce champ ne prend que les images'

        ];
    }
}

