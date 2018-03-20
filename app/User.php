<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
	
	public function posts() {
		return $this->hasMany(Post::class);
	}
	public function comments() {
		return $this->hasMany(Comment::class);
	}
	
	public static function add( $fields ) {
		$user = new static;
		$user->fill($fields);
		$user->password = bcrypt($fields['password']);
		$user->save();
		
		return $user;
	}
	
	public function edit( $fields ) {
		$this->fill($fields);
		$this->password = bcrypt($fields[password]);
		$this->save();
	}
	
	public function remove() {
		$this->delete();
	}
	
	public function uploadAvatar($image){
		if($image == null){return;}
		Storage::delete('uploads/'.$this->image);
		$imagename = str_random(10) . '.' . $image->extension();
		$image->saveAs('uploads', $imagename);
		$this->image = $imagename;
		$this->save();
	}
	public function getAvatar() {
		if ($this->image == null)
			return '/img/no-user-image.png';
		return '/uploads/' . $this->image;
	}
	
	public function makeAdmin() {
		$this->is_admin = 1;
		$this->save();
	}
	
	public function makeNormal() {
		$this->is_admin = 0;
		$this->save();
	}
	
	public function toggleAdmin($is_admin) {
		if ($is_admin == 0)
			return $this->makeAdmin();
		return $this->makeNormal();
}
}
