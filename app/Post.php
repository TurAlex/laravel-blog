<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model {
	public static function inactive(){
	
		return static::where('active',0)->get();
	
	}
}
