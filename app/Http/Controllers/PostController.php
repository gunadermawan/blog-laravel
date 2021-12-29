<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        return view('blog', [
            "title" => "blog",
            "blogs" => Post::all()
        ]);
    }

    public function show(Post $blogs)
    {
        return view('posts', [
            "title" => "Single post",
            "post" => $blogs
        ]);
    }
}
