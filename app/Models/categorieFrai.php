<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class categorieFrai extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function frais () : HasMany 
    {
        return $this->hasMany(Frai::class);
    }
}
