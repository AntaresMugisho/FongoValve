<?php

namespace App\Http\Controllers;
use App\Http\Requests\communicareRequest;
use App\Models\Admin;
use App\Models\Communicare;
use Illuminate\Http\RedirectResponse;
use Request;
//use Illuminate\Http\Request;
class webCommunicareCntrllr extends Controller
{
    public function creation () 
    {   
        return view('createComm');
    }
    public function create (communicareRequest $request) : RedirectResponse
    {   
        /**
         * ici le redacteur devra être l'admin authentifié
         */
        $writer = Admin::all()[rand(0,count(Admin::all())-1)];
        $validatedComm = $request->validated();
        $validatedComm['signedBy'] = implode(',',$validatedComm['signedBy']);
        $commun = $writer->communicares()->create($validatedComm);
        dd($commun);
    }
    public function commun () 
    {  
        return view('commun',[
            'communs'=>Communicare::paginate(5)
        ]);
    }
    public function updating ($num)
    {
        return view('update',[
            'num'=>$num,
            'commun'=>Communicare::findByOrder($num)
        ]);
    }
    public function update (communicareRequest $request, $num) : RedirectResponse
    {
        $valid = $request->validated();
        Communicare::findByOrder($num)->update($valid);
        return redirect(to_route('commun'));
    }
    public function  destroyCommun ($num) : RedirectResponse
    {   
        $commun = Communicare::findByOrder($num);
        $commun->delete();
        return redirect(to_route('commun'));
    }
}
