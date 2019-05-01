<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    /**
     * Default Table
     */
    protected $table = 'activities';
    protected $fillable = [
        'id_user', 'activity'
    ];
    protected $primaryKey = 'id';
    protected $guarded = ['id'];

    public function user()
    {
        return $this->belongsTo('App\User','id_user');
    }
}
