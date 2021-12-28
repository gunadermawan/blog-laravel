<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home',[
        "title" => "home"]);
});

Route::get('/about', function () {
    return view('about',[
        "title" => "about",
      "nama" => "gunadermawan",
      "email" => "socialcoding@gmail.com",
      "image" => "gunadermawan.JPG"
    ]);
});

Route::get('/blog', function () {
    $blog_posts = [
    [
        "title" => "Kotlin",
        "author" => "Guna Dermawan",
        "body" => "  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, voluptatum dignissimos. Molestiae expedita numquam illum possimus veritatis, blanditiis laboriosam aliquid amet similique quas provident hic ex qui sapiente rerum ea totam libero! Corrupti vero voluptas quidem voluptate suscipit provident impedit esse distinctio inventore magnam, nemo molestias quae ipsum dicta fugit culpa nesciunt. Id laudantium commodi, corporis cumque, corrupti totam itaque cum officia molestiae, beatae unde dolores rem ratione praesentium soluta pariatur iure doloremque est. Pariatur molestiae vel debitis illo beatae?"
    ],
    [
        "title" => "Kotlin android",
        "author" => "Guna Dermawan",
        "body" => " Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, voluptatum dignissimos. Molestiae expedita numquam illum possimus veritatis, blanditiis laboriosam aliquid amet similique quas provident hic ex qui sapiente rerum ea totam libero! Corrupti vero voluptas quidem voluptate suscipit provident impedit esse distinctio inventore magnam, nemo molestias quae ipsum dicta fugit culpa nesciunt. Id laudantium commodi, corporis cumque, corrupti totam itaque cum officia molestiae, beatae unde dolores rem ratione praesentium soluta pariatur iure doloremque est. Pariatur molestiae vel debitis illo beatae? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate"
    ]
];
    return view('blog',[
        "title" => "blog",
        "blogs" => $blog_posts
    ]);
});
