<?php

namespace App\Models;


class Post
{
    private static $blog_post = [
        [
            "title" => "Kotlin",
            "slug" => "kotlin",
            "author" => "Guna Dermawan",
            "body" => "  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, voluptatum dignissimos. Molestiae expedita numquam illum possimus veritatis, blanditiis laboriosam aliquid amet similique quas provident hic ex qui sapiente rerum ea totam libero! Corrupti vero voluptas quidem voluptate suscipit provident impedit esse distinctio inventore magnam, nemo molestias quae ipsum dicta fugit culpa nesciunt. Id laudantium commodi, corporis cumque, corrupti totam itaque cum officia molestiae, beatae unde dolores rem ratione praesentium soluta pariatur iure doloremque est. Pariatur molestiae vel debitis illo beatae?"
        ],
        [
            "title" => "Kotlin android",
            "slug" => "kotlin-android",
            "author" => "Guna Dermawan",
            "body" => " Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, voluptatum dignissimos. Molestiae expedita numquam illum possimus veritatis, blanditiis laboriosam aliquid amet similique quas provident hic ex qui sapiente rerum ea totam libero! Corrupti vero voluptas quidem voluptate suscipit provident impedit esse distinctio inventore magnam, nemo molestias quae ipsum dicta fugit culpa nesciunt. Id laudantium commodi, corporis cumque, corrupti totam itaque cum officia molestiae, beatae unde dolores rem ratione praesentium soluta pariatur iure doloremque est. Pariatur molestiae vel debitis illo beatae? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_post);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
