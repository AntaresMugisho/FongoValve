<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Frai extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function categorieFrai ()
    {
        return $this->belongsTo(categorieFrai::class);
    }
    public function etudiant () : BelongsToMany
    {
        return $this->belongsToMany(Etudiant::class);
    }
}
