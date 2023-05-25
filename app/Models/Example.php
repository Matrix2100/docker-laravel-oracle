<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Example extends Model
{
    protected $table = 'tb_example';
    protected $primaryKey = 'id';

    /**
     * The attributes that should be visible
     * @var array<int, string>
     */
    protected $visible = [
        'id',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
    ];
}
