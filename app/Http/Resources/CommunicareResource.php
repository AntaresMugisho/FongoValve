<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CommunicareResource extends JsonResource
{
    public static $wrap = 'communiqué';
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'numéro'=>$this->order,
            'concernés'=>$this->concerns,
            'titre'=>$this->title,
            'redacteur'=>new AdminResource($this->admin),
            'signateurs'=>$this->signedBy,
            'message'=>$this->content,
            'fichier jointe'=>$this->file

        ];
    }
}
