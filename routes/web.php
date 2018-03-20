<?php
//Home page
Route::get('/','PagesController@index');

// Show Posts (Category) page
Route::get('/posts','PostsController@index');

//Page to create a post
Route::get('/posts/create','PostsController@create');

// Show Post page
Route::get('/posts/{post}','PostsController@show');

// Store new post to DB
Route::post('/posts', 'PostsController@store');


// ADMIN
Route::get('admin','Admin\DashboardController');





