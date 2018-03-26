<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Cache\TagSet;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model {

	use Sluggable;
	
	protected $fillable = ['title', 'content', 'intro'];
	
	public function category(){
		return $this->belongsTo(Category::class);
	}
	
	public function author(){
		return $this->belongsTo(User::class,'user_id');
	}
	public function tags(){
		return $this->belongsToMany( Tag::class,'post_tags','post_id','tag_id');
	}
	
	public function comments() {
		return $this->hasMany(Comment::class);
	}
	/**
	 * Return the sluggable configuration array for this model.
	 *
	 * @return array
	 */
	public function sluggable()
	{
		return [
			'slug' => [
				'source' => 'title'
			]
		];
	}
	
	public static function add( $fields  ) {
		$post = new static;
		$post->fill($fields);
		$post->user_id = 1;
		$post->save();
		return $post;
	}
	
	public function edit( $fields ) {
		$this->fill($fields);
		$this->save();
	}
	
	public function remove() {
		$this->removeImage();
		$this->delete();
	}
	
	public function uploadImage($image){
		if($image == null){return;}
		$this->removeImage();
		$imagename = str_random(10) . '.' . $image->extension();
		$image->storeAs('public/uploads/', $imagename);
		$this->image = $imagename;
		$this->save();
	}
	
	public function removeImage() {
		if ($this->image != null)
			Storage::delete('public/uploads/'.$this->image);
	}
	public function setCategory($id){
		if($id == null)
			return;
		$this->category_id = $id;
		$this->save();
	}
	public function setTags($ids){
		if($ids == null)
			return;
		$this->tags()->sync($ids);
	}
	
	public function setDraft() {
		$this->status = 0;
		$this->save();
	}
	
	public function setPublic() {
		$this->status = 1;
		$this->save();
	}
	
	public function toggleStatus($status) {
		if ($status == null)
			return $this->setDraft();
		return $this->setPublic();
	}
	
	public function getImage() {
		if ($this->image == null)
			return '/public/img/no-image.png';
		return '/public/uploads/' . $this->image;
	}
	
	public function getCategoryTitle() {
		if ($this->category != null)
			return $this->category->title;
		return 'Нет категории';
	}
	public function getCategoryDescription() {
		if ($this->category != null)
			return $this->category->description;
		return 'Нет категории';
	}
	
	public function getTagsTitles() {
		if($this->tags == null)
			return 'Нет тегов';
		return implode(', ',$this->tags->pluck('title')->all());
	}
	
	public function getCategoryID() {
		return $this->category != null ? $this->category->id : null;
	}
	
	public function getDate() {
		return $this->created_at->format('F d, Y');
	}
	
	public function getComments(  ) {
		return $this->comments()->where('status', 1)->get();
	}
	public function hasPrevious() {
		return	self::where('id','<', $this->id)->max('id');
	}
	public function getPrevious() {
		$postID = $this->hasPrevious();
		return self::find($postID);
	}
	public function hasNext() {
		return self::where('id','>', $this->id)->min('id');
	}
	public function getNext() {
		$postID = $this->hasNext();
		return self::find($postID);
	}
	
	public function related(  ) {
		return self::all()->except($this->id);
	}
	
	public function hasCategory() {
		return $this->category != null ? true : false;
	}
	public function hasTags() {
		return $this->tags != null ? true : false;
	}
}
