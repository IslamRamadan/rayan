<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Currency extends Model
{
    protected  $table = 'currencies';
    protected $fillable = ['name','rate','code_en','code_ar'];
    public function getCodeAttribute()
       {
           return app()->getLocale()=='ar'? $this->code_ar : $this->code_en;
       }
}
