<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EtudiantResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'nom'=>$this->resource->nom,
            'matricule'=>$this->resource->matricule,
            'departement'=>$this->resource->departement,
            'valable'=>$this->resource->valable,
            'infos de payement'=>$this->when(
                $this->resource->valable!=1,
                FraiResource::collection($this->whenLoaded('frais'))
            )
        ];
    }
}
