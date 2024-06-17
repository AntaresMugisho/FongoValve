<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Etudiant extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function frais () : BelongsToMany
    {
        return $this->belongsToMany(Frai::class)->as('paiement')->withTimestamps();
    }
}
