<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Guna Dermawan',
            'username' => 'gunadermawan',
            'email' => 'gunadermawan@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'zezee',
        //     'email' => 'zezee@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();
        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'Computer',
            'slug' => 'Computer'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul pertama',
        //     'slug' => 'judul_pertama',
        //     'exerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
        //     'body' =>
        //     'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, reiciendis iste fugiat deleniti quas commodi dolores, ducimus suscipit corrupti et impedit ipsam assumenda, aliquid sit animi libero nemo sapiente eos culpa error voluptatum. Autem veniam rem dolore provident ad sunt, eveniet illum unde? Asperiores perferendis quam repudiandae deserunt, iste culpa aliquam inventore assumenda, reiciendis suscipit id numquam fugit adipisci aperiam. Eos molestiae consequuntur impedit suscipit tempore nisi nobis architecto excepturi ullam voluptate quaerat quisquam, possimus fugiat quibusdam veniam voluptas itaque iusto dicta facere odio voluptatem! Consectetur, nesciunt natus eum quidem iste laudantium nisi eaque cupiditate, quas veritatis magni maiores maxime.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul kedua',
        //     'slug' => 'judul_kedua',
        //     'exerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
        //     'body' =>
        //     'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, reiciendis iste fugiat deleniti quas commodi dolores, ducimus suscipit corrupti et impedit ipsam assumenda, aliquid sit animi libero nemo sapiente eos culpa error voluptatum. Autem veniam rem dolore provident ad sunt, eveniet illum unde? Asperiores perferendis quam repudiandae deserunt, iste culpa aliquam inventore assumenda, reiciendis suscipit id numquam fugit adipisci aperiam. Eos molestiae consequuntur impedit suscipit tempore nisi nobis architecto excepturi ullam voluptate quaerat quisquam, possimus fugiat quibusdam veniam voluptas itaque iusto dicta facere odio voluptatem! Consectetur, nesciunt natus eum quidem iste laudantium nisi eaque cupiditate, quas veritatis magni maiores maxime.',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul ketiga',
        //     'slug' => 'judul_ketiga',
        //     'exerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
        //     'body' =>
        //     'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, reiciendis iste fugiat deleniti quas commodi dolores, ducimus suscipit corrupti et impedit ipsam assumenda, aliquid sit animi libero nemo sapiente eos culpa error voluptatum. Autem veniam rem dolore provident ad sunt, eveniet illum unde? Asperiores perferendis quam repudiandae deserunt, iste culpa aliquam inventore assumenda, reiciendis suscipit id numquam fugit adipisci aperiam. Eos molestiae consequuntur impedit suscipit tempore nisi nobis architecto excepturi ullam voluptate quaerat quisquam, possimus fugiat quibusdam veniam voluptas itaque iusto dicta facere odio voluptatem! Consectetur, nesciunt natus eum quidem iste laudantium nisi eaque cupiditate, quas veritatis magni maiores maxime.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
