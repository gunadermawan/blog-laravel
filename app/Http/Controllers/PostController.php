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
            "active" => 'blog',
            "blogs" => Post::latest()->filter(request(['search']))->get()
        ]);
    }

    public function show(Post $blogs)
    {
        return view('posts', [
            "title" => "Single post",
            "active" => 'blog',
            "post" => $blogs
        ]);
    }
}
