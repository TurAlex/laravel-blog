<?php

namespace App\Http\Controllers;

use App\Post;

class PostsController extends Controller
{

	public function index(){
		$posts = Post::all();
		return view('posts.index',compact('posts'));
	}

	public function show($id){
		$post = Post::find($id);
		return view('posts.show',compact('post'));
	}
	public function create(){
		return view('posts.create');
	}
	
	public function store(){
		Post::create(request([
												'title',
												'url',
												'content',
												'intro',
												'active',
												'category_id',
												'tags_list'
		]));
		return redirect('/posts');
	}
	
	
}
