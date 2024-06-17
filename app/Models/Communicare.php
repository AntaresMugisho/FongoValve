<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Communicare extends Model
{
    use HasFactory;
    use HasUuids;
    protected $guarded = [];
    public function scopeFindByOrder ($query, $num)
    {
        return $query->where('num',$num)->first();
    }
    public function admin () : BelongsTo
    {
        return $this->belongsTo(Admin::class);
    }
}
