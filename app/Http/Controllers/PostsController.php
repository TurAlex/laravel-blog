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
		return $post;
		return view('posts.show',compact('post'));
	}

}
