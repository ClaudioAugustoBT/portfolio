<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Eco2 extends Model
{
    protected $fillable = ['name', 'lat', 'log', 'desc'];
    protected $guarded = ['id'];
    protected $table = 'ecoponto';
}
