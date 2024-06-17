<?php

namespace App\Models;

use App\Models\Communicare;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Admin extends Model
{
    use HasFactory;
    use HasUuids;
    public function communicares () : HasMany
    {
        return $this->hasMany(Communicare::class);
    }
}
