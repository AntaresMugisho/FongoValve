<?php

namespace App\Http\Controllers\Api;

//use App\Services\Belongs;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class usersController extends Controller
{
    
     public function login ( Request $request)
     {
        try {
            $credentials = $request->validate([
                'matricule' => ['required','max:8','min:8'],
            ]);
        } catch (ValidationException $e) {
            return response()->json(
                ['error' => $e->errors()],
                400,
                [
                   //headers 
                ]
            );
        }
        $user = User::where('matricule',$credentials['matricule'])->first();
         if ($user) {
            $request->session()->regenerate();
            return response()->json(
                [
                    'message' => 'connecté avec succès !',
                    'nom' => $user->name,
                    'matricule' => $user->matricule,
                    'depart' => $user->depart,
                    'promotion' => $user->promotion
                ],
                200,
                [
                    //headers
                ]
            );         
        }
        return response()->json(
            ['message' => 'le matricule fourni ne correspond pas !'],
            400,
            [
               //headers 
            ]
        );   
     }
     public function test (Request $request){

        return view('error');
     }
     public function loginAccess ( Request $request)
     {
        try {
            $credentials = $request->validate([
                'matricule' => ['required','max:8','min:8'],
            ]);
        } catch (ValidationException $e) {
            return response()->json(
                ['erros' => $e->errors()],
                400 ,
                [
                   //headers
                ]
            ); 
        }
        
        $user = User::where('matricule',$credentials['matricule'])->first();
        if ($user) {
            $token = $user->createToken('loginToken');
            //$request->session()->regenerate();
            return response()->json(
                [
                    'message' => 'connecté avec succès !',
                    'token' => $token->plainTextToken,
                    'nom' => $user->name,
                    'matricule' => $user->matricule,
                    'depart' => $user->depart,
                    'promotion' => $user->promotion

                ],
                200,
                [
                   //headers
                ]
            ); 
        }
        return response()->json(
            ['message' => 'le matricule fourni ne correspond pas à aucun étudiant !'],
            400,
            [
               //headers 
            ]
        );
     }
     public function loginAs (Request $request )
     {
        try {
            $request->validate([
                'matricule' => ['required','max:8','min:8'],
                'password' => ['required', 'max:8', 'min:8'],
            ]);
        } catch (ValidationException $e) {
            return response()->json(
                ['erros' => $e->errors()],
                400 ,
                [
                   //headers
                ]
            ); 
        }
     
        $user = User::where('matricule',$request->matricule)->first();
        if ($user) {
            if (Hash::check($request->password,$user->password)) {
                $annonceToken = $user->createToken('annonceToken',['annonces:publish']);
                return response()->json(
                    [
                        'message' => 'connecté en tant que...',
                        'token' => $annonceToken->plainTextToken
                    ],
                    200,
                    [
                        //headers
                    ]
                );
            }
            return response()->json(
                ['message' => 'mot de passe incorrect !'],
                400,
                [
                   //headers 
                ]
            ); 
        }
        return response()->json(
            ['message' => 'le matricule fourni ne correspond pas à aucun étudiant !'],
            400,
            [
               //headers 
            ]
        );   
     }
    
}
