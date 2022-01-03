<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::latest();
        if (request('search')) {
            $posts->where('title', 'like', '%' . request('search') . '%')
                ->orWhere('body', 'like', '%' . request('search') . '%');
        }
        return view('blog', [
            "title" => "All Post",
            "active" => 'blog',
            "blogs" => $posts->get()
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
