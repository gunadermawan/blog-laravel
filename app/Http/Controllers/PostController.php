<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        return view('blog', [
            "title" => "All Post",
            // "blogs" => Post::all()
            "blogs" => Post::with('category')->latest()->get()
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
