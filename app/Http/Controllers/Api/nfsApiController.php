<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\EtudiantResource;
use App\Models\Etudiant;
use App\Models\Frai;
use Illuminate\Http\Request;

class nfsApiController extends Controller
{
    public function getEtudiants  (int $matricule)

    {
        return EtudiantResource::collection(Etudiant::where('matricule','=',$matricule)->with('frais')->get());
    }
}
