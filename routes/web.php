<?php



Route::get('/posts','PostsController@index');

Route::get('/posts/{post}','PostsController@show');


