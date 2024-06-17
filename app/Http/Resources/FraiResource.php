<?php

namespace App\Http\Resources;

use App\Models\categorieFrai;
use App\Models\Frai;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class FraiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'type'=>new CategorieFraiResource($this->resource->categorieFrai),
            'montant'=>$this->resource->montant,
            'payé le '=>$this->resource->created_at,
            'reste'=>$this->when(
                $this->resource->reste!=0,
                $this->resource->reste)
        ];
    }
}
