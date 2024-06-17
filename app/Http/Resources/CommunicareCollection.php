<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;

class CommunicareCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'communiqué'=>$this->collection,
            'link'=>route('AllcommunicareApi'),
            'count'=>count($this->collection)
        ];
    }
}
