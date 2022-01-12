<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SlidCategory extends Model
{

    protected $table = 'slid_categories';
    public $timestamps = true;
    protected $fillable = array('category_id','img');
    protected $appends = [   "img_full_path"] ;


    public function  getImgFullPathAttribute()
    {
        return asset($this->img) ;
    }

}
