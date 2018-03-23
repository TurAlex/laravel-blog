<?php
//Home page
Route::get('/','HomeController@index');
Route::get('/post/{slag}','HomeController@show')->name('post.show');
Route::get('/tags/{slag}','HomeController@tag')->name('tag.show');
Route::get('/category/{slag}','HomeController@category')->name('category.show');

Route::post('/sendmail','SendmailsController@contactMail');

//PAGES
Route::get('/contacts','PagesController@showContacts');
Route::get('/about','PagesController@showAbout');


Route::group(['middleware' => 'auth'], function (){
	Route::get('/logout', 'AuthController@logout');
	Route::get('/profile', 'ProfileController@index');
	Route::post('/profile', 'ProfileController@store');
	Route::post('/users-comments','CommentsController@store');
});

Route::group(['middleware' => 'guest'], function (){
	Route::get('/register', 'AuthController@registerForm');
	Route::post('/register', 'AuthController@register');
	Route::get('/login', 'AuthController@loginForm')->name('login');
	Route::post('/login', 'AuthController@login');
});

//////////////////////// ADMIN ///////////////////

Route::group([
	'prefix'      => 'admin',
	'namespace'   => 'Admin' ,
	'middleware'  => 'admin'
],function (){
	Route::get('/', 'DashboardController@index');
	Route::resource('/categories', 'CategoriesController');
	Route::resource('/tags', 'TagsController');
	Route::resource('/users', 'UsersController');
	Route::resource('/posts', 'PostsController');
	Route::resource('/comments', 'CommentsController');
	Route::get('/comments/toggle/{id}', 'CommentsController@toggle');
	Route::resource('/pages', 'PagesController');
});






