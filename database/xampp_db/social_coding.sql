-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2022 pada 15.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_coding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(2, 'Computer', 'Computer', '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(3, 'Personal', 'personal', '2022-01-05 21:05:26', '2022-01-05 21:05:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_29_073021_create_posts_table', 1),
(6, '2021_12_30_041227_create_categories_table', 1),
(7, '2022_01_06_101637_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publih_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `exerpt`, `body`, `publih_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Sit illo explicabo.', 'corporis-et-dolores-id-rem', NULL, 'Totam fugit esse nihil reiciendis fugit eum expedita. Voluptatem libero neque a ipsa accusantium et dignissimos maiores. Laborum itaque numquam praesentium blanditiis maiores. Dolorum nemo rerum ab quibusdam eos rerum.', '<p>Ea cum perferendis et fugit tempore ipsum consequatur. Assumenda nulla eos asperiores quod quam. Omnis rerum nostrum in saepe saepe ut dolore.</p><p>Magni rerum deserunt impedit illum necessitatibus ad omnis. Ipsam aut sint assumenda impedit. Possimus inventore quis dolore fugit id tenetur porro itaque. Qui non enim eius earum necessitatibus. Quo dolor eum in officiis qui excepturi repellendus.</p><p>Neque voluptas voluptatem modi temporibus id. Aut quae omnis explicabo delectus sed. Ut cupiditate hic similique non.</p><p>Consequatur iure sint et magni voluptatibus. Natus ea consequatur earum deserunt quia aut dolorem. Dolorem animi consequuntur sed voluptatem nostrum aut.</p><p>Explicabo aut molestiae quo consectetur culpa est voluptas inventore. Soluta omnis voluptatibus atque recusandae neque. Repellat animi aut earum ratione.</p><p>Ducimus culpa minus perspiciatis deserunt. Nihil velit nemo sunt debitis non odio. Quo totam libero ex et ex repellat et. Inventore sed libero dolorum dolor sint.</p><p>Illum deserunt aut omnis quas nulla deleniti nisi. Ea esse quod saepe laudantium et ex.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(2, 1, 3, 'Illo necessitatibus asperiores omnis.', 'et-corporis-dicta-aliquam-quas-reprehenderit-culpa-sed-labore', NULL, 'Est ea autem rerum est dolorem sed. Reiciendis molestiae inventore natus atque expedita repellendus commodi. Voluptas nihil dolores quidem sit dolor voluptatem. Sint velit aliquid consequatur debitis corrupti.', '<p>Quos autem nostrum iusto qui rem velit. Non deserunt sapiente reiciendis consequuntur quia. Sapiente dignissimos sunt architecto nisi voluptas. Nisi placeat dolore quod qui.</p><p>Maiores nulla quo totam quas velit dolores repudiandae aut. Corrupti neque ea quaerat animi ea sed. Neque fugit tempora inventore amet. Quia consequatur et non error et.</p><p>Veniam laboriosam modi error eos ducimus quibusdam. Temporibus est non aliquid totam accusamus laboriosam maiores. Aut vel ab quo eveniet adipisci praesentium dolores. Est autem veritatis iusto illum.</p><p>Cumque perspiciatis deserunt numquam aspernatur sequi sed. A non labore voluptatem delectus. Dolorem impedit nihil in voluptate deleniti beatae. Ipsum consequatur voluptas aut est perspiciatis quia.</p><p>Rerum voluptatum rerum tempore eveniet officia. Expedita aut non minus est libero id eligendi. Possimus blanditiis rerum totam laudantium. Eos excepturi iusto et similique explicabo qui.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(3, 1, 2, 'Quia commodi inventore aut magni aperiam ad exercitationem qui ut.', 'itaque-nam-quia-neque', NULL, 'Accusamus ea enim et eum et fugit. Et magnam molestiae sit beatae esse harum aut ad. Eligendi aut voluptas sed aperiam. Qui aut tenetur aspernatur mollitia hic et.', '<p>Labore repudiandae inventore doloribus dicta omnis. Quae laboriosam harum tenetur sit consectetur et. Eaque dicta quas blanditiis id ut.</p><p>Officiis cupiditate dolores ea doloremque. Labore neque quis qui. Aliquid reprehenderit qui officia voluptatem amet nobis illum.</p><p>Quis aperiam iure non ut quas magni. Sapiente quidem numquam corrupti et nisi aliquam. Distinctio qui ratione libero aut blanditiis. Sunt qui hic et.</p><p>Consequuntur qui accusamus itaque fugiat ex et debitis aliquam. Eveniet aut adipisci rerum sit qui quidem. Voluptatem occaecati ad aperiam qui molestiae. Sunt accusamus voluptas a non inventore veritatis sit rem.</p><p>Vero et molestias qui eos adipisci. Quod saepe dignissimos consequatur dicta nulla ab illum.</p><p>Nemo eius aspernatur quaerat voluptate iste. Aspernatur omnis voluptates et vel quam omnis blanditiis. Illum enim accusantium ipsam veniam ut autem. Illum sit doloremque est repellendus et modi.</p><p>Adipisci doloremque debitis at similique adipisci. Autem quasi provident qui. Vel distinctio ut non repellat.</p><p>Recusandae nihil ut eum asperiores aut asperiores. Aliquam dolore saepe sit aut. Dolorem eaque numquam velit exercitationem aut. Vero voluptatem perferendis enim ipsa ratione cupiditate quo.</p><p>Ut beatae veniam voluptatibus. Ab ab ab harum harum ea cumque. Asperiores eveniet sed id alias voluptatem nesciunt. Porro voluptas quo doloremque culpa atque non ut enim.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(4, 2, 2, 'Odit omnis laudantium.', 'quasi-et-totam-enim-laboriosam', NULL, 'Rerum eaque doloremque quasi qui facilis. Cumque sequi incidunt qui aut ea ad quia. Exercitationem et sequi hic ullam et laboriosam nemo sed. Consequatur sit omnis qui sed.', '<p>At cumque cum possimus ratione quo illo. Et voluptatem est minima. Ab atque rerum laudantium laborum quis fugit.</p><p>Qui repellendus voluptates sit rerum architecto non. Iure maiores repellendus maxime vitae a perferendis. A libero debitis voluptatem vel illum perspiciatis provident. Quibusdam nisi sed ab assumenda et.</p><p>Harum distinctio qui quae. Neque voluptas in sit rerum qui provident. Eius quam ex delectus animi inventore autem voluptatem et. Est sunt consequatur officia labore asperiores id quam.</p><p>Atque fugiat velit maxime laboriosam quidem. Natus nihil voluptatem doloremque iste fugit. Eum quae voluptatem enim voluptate eveniet facilis aliquid.</p><p>Quis reprehenderit pariatur ut corporis quisquam dicta similique. Nulla blanditiis sit aspernatur eligendi. Ut ducimus quod dolor saepe dolor quo. Libero ea quas qui qui officiis sunt est. Aut tempore enim reprehenderit vero quia est.</p><p>Voluptas temporibus sequi libero nisi est. Molestias ipsam ut minima dicta. Repellat porro culpa illum. Voluptate ut dolorum saepe atque suscipit temporibus quo.</p><p>Qui sapiente aut exercitationem officiis voluptatibus aspernatur. Consectetur enim aut quidem. Voluptatem sed vitae rerum at voluptatibus. Sed aut cum autem.</p><p>Sunt quia ut aut rem. Aut et quo aut ad eligendi non. Voluptas architecto ut ut illo. Amet quod exercitationem sunt non provident. Voluptatem accusamus laborum eos excepturi dolores repellat.</p><p>Itaque hic corporis numquam quia qui voluptatem. Dolorem voluptatibus consequatur cupiditate iure. Rerum fugit doloremque quia.</p><p>Et corporis quia dolor dolores sint rerum totam. Quia quam hic ratione et doloremque quas. Rem consequatur dolor quibusdam.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(5, 2, 2, 'Sed voluptatem eum sunt sunt.', 'id-dolor-eaque-quo-ipsa-esse-alias-voluptatem', NULL, 'Quia maiores aut voluptatem. Sint dicta beatae non animi itaque quibusdam nemo. Velit ut ratione numquam facilis.', '<p>Quo consequatur impedit recusandae in. Velit modi consequatur dolor libero.</p><p>Ducimus est qui esse minus. Debitis deserunt dolorem ratione ex dicta eum porro. Explicabo ex tempore non corrupti aut voluptas.</p><p>Doloribus quis aut sit ullam porro. Et eaque qui sint et ipsam. Voluptatem suscipit iure quaerat vel sed.</p><p>Natus repellendus quasi laboriosam aspernatur. Incidunt explicabo eum nemo eaque facilis aut deserunt. Possimus quaerat qui rerum qui iste sunt accusamus in.</p><p>Ut est temporibus perspiciatis quo et exercitationem architecto. Sed autem et placeat nihil doloremque. Et explicabo ut quibusdam facere quibusdam nostrum fuga nemo. Voluptatem et vel qui ut vel rerum accusantium. Ullam rem voluptatem ipsam et voluptatum nam.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(6, 1, 1, 'Est dolor facere est.', 'recusandae-praesentium-quasi-rerum', NULL, 'Ut et magnam consequatur nemo sed porro. Sunt omnis exercitationem quis earum ipsum. Qui labore eligendi dolore error. Velit laboriosam dolorum quisquam architecto.', '<p>Atque assumenda temporibus id nostrum ad. Tempore dolor maxime rerum. Molestiae itaque error recusandae ipsa consequatur.</p><p>Est et est nostrum repudiandae. Et labore asperiores veniam culpa. Nihil voluptate unde veritatis quo cum rerum debitis.</p><p>Eos et ut harum quia. Qui ex molestiae harum ab accusamus accusantium placeat.</p><p>Eum praesentium explicabo voluptatibus qui accusamus minus. Minima autem veritatis esse harum nam eaque recusandae unde. Ea distinctio voluptas omnis provident nisi labore aut. Sunt sit harum provident molestiae doloremque numquam et et. Quia voluptas quia est facere.</p><p>Et aut minima culpa esse nam et hic. Similique hic non eos voluptatem distinctio natus consequatur. Soluta esse sapiente et iusto error.</p><p>Laudantium ea impedit praesentium accusantium. Magni ea est aliquid fugit sint eius. Architecto voluptas repellendus tenetur voluptatem non. Qui dolore corporis tenetur consequatur qui.</p><p>Exercitationem sed rem eum quod in ut adipisci. Quia voluptas quibusdam qui. At nihil eligendi laborum eius eligendi neque. Temporibus labore perferendis ipsa corporis.</p><p>Id necessitatibus temporibus ut distinctio perferendis quia alias reiciendis. Eos quia soluta ut. Debitis recusandae vel enim minima id ab sequi. Quidem et quibusdam asperiores doloremque voluptatem vel ut omnis. Aliquam enim neque et impedit.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(7, 1, 2, 'Fugit repellendus quia ut vel nulla.', 'voluptatem-possimus-harum-aliquid-et-ipsum-necessitatibus-odio', NULL, 'Voluptatem laborum velit impedit adipisci et ut quia. Est odio nam aut culpa quas. Sit assumenda odio molestias est voluptas quia. Voluptatem qui delectus sed sit vel ut est.', '<p>Numquam enim et aut quaerat et neque dolorum. Est temporibus ipsum repellendus aut. Ea sequi impedit doloribus id. Voluptatem rem blanditiis voluptatem tempora.</p><p>Consectetur consequatur quia ab in possimus facere magnam. Rem iure corrupti tempore explicabo doloribus beatae harum. Provident beatae aut modi voluptate.</p><p>Accusantium repudiandae quidem officiis debitis non consequatur aperiam. Tempore corporis ut laborum et sit. Minima suscipit magni illum nemo rerum dolor et.</p><p>Vitae officiis voluptatem officia ad temporibus. Accusantium perferendis ad dolorum.</p><p>Veniam consequatur natus nulla nemo eos. Ab hic ut harum iure aspernatur. Illo minima vitae adipisci aut eligendi porro sit.</p><p>Necessitatibus facere inventore vero aut sint non labore. Commodi provident cumque a rerum. Saepe ut eum voluptas non.</p><p>Quis enim veritatis sequi. Est impedit est et aut porro sapiente.</p><p>Mollitia quam accusamus natus facilis architecto qui dolorem ratione. Qui et ea qui rerum illo libero qui. Ipsa perferendis non impedit error excepturi.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(8, 1, 2, 'In sed dolor illo voluptas in.', 'soluta-sit-ipsa-omnis-sequi-molestias-cupiditate-et', NULL, 'Nobis molestiae quisquam eos repellendus. Aut natus saepe iste accusantium. Perferendis est repellat maxime totam facilis non mollitia temporibus.', '<p>Nostrum ratione voluptatem maiores autem esse ut enim. Reiciendis expedita ipsa voluptas voluptas. Minima enim sit similique nesciunt aliquid quo. Sunt quas facilis illo doloremque sunt.</p><p>Nulla vero error ut quisquam tempora molestiae et. Aut animi nam ad aliquid vel deleniti. Sunt rerum perferendis non qui eos et voluptatem. Necessitatibus quae enim sed doloremque alias ut. Sequi quae nihil occaecati quidem.</p><p>Qui asperiores quo voluptas amet consequatur et quia aut. Neque qui adipisci cupiditate repudiandae quod.</p><p>In eveniet itaque eum. Molestiae magni consequuntur est.</p><p>Aliquam tempore accusamus sed commodi deserunt autem quis. Qui ipsam incidunt a officia. Animi incidunt aspernatur corrupti deserunt.</p><p>Dicta cumque consequatur iste tempore nesciunt blanditiis odit. Qui voluptatem non ipsum velit. Vel alias magnam soluta velit in totam voluptatem et. Similique non est tenetur vero ratione explicabo optio.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(9, 1, 2, 'Quas nisi magnam molestias quos laudantium earum.', 'fugiat-repudiandae-ut-provident-quas-nesciunt-corporis-ut-excepturi', NULL, 'Molestiae quae consequatur voluptate sint aut. Dolores aut ut consequatur consequuntur perferendis dolores quasi. Ad aspernatur qui nam nesciunt sunt et nesciunt. Eaque qui et molestiae recusandae sit.', '<p>Reiciendis eveniet nobis non non maiores qui velit. Repudiandae quia ex natus ab voluptatum. Nemo et at autem. Sed fuga et facere tempore omnis earum.</p><p>Sed dolorem et molestias. Quisquam aut ad ipsum vel consequatur cupiditate. Doloribus sed iure ut non ipsa inventore.</p><p>In quis sed nostrum tempora vero. Esse perferendis expedita possimus laboriosam earum accusantium nihil et. Eum ut sed nobis atque rerum quam saepe. Neque ad et velit dolor distinctio a.</p><p>Excepturi sed nemo molestiae. Veritatis tempore qui quisquam blanditiis. Atque omnis quam aspernatur quo suscipit.</p><p>Optio cumque tempore illo nobis fugiat consequatur. Exercitationem odit aperiam est aut sapiente animi esse. Corporis sit numquam et quos illo est ab. Odio cumque unde consequatur quae cum magnam facere porro. Explicabo eum est et assumenda porro.</p><p>Exercitationem nobis deserunt vel eum nobis voluptatem. Consequuntur placeat iure autem explicabo earum. Asperiores dolor repudiandae sed enim laboriosam aut dolor. Ut ut et vel a. Eos pariatur inventore aliquam minus quia in.</p><p>Ut repudiandae tenetur et porro dolorum nesciunt. Ipsam ratione inventore aperiam impedit est voluptatem voluptas. Velit molestias aut nisi est ex. Quis voluptatem non similique necessitatibus quae ducimus.</p><p>Eius nostrum fugit quia quibusdam distinctio id. Sed assumenda est libero eum et non ipsa. Aut dolores ratione voluptatum officiis ea omnis.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(10, 2, 3, 'Sunt autem.', 'autem-culpa-facere-eos-quod-vel-voluptates-porro-eum', NULL, 'Odio distinctio explicabo temporibus voluptatem excepturi voluptas aut. Accusantium earum nihil aut accusamus sint est dolorem. Quia sit est in amet.', '<p>Consequatur maiores eveniet nesciunt. Quaerat officiis quia quia et ipsum non. Itaque sed facilis exercitationem hic. Et enim dignissimos veritatis reprehenderit laboriosam id in.</p><p>Velit quisquam necessitatibus beatae consequuntur error. Dolore deserunt aut maxime qui officia sit repellendus incidunt. Natus quae numquam iste consequatur tenetur dolorem ut. Eaque occaecati ratione dolor assumenda. Rerum nemo eum totam odit ut aut.</p><p>Doloremque eveniet deserunt quaerat unde eius et. Consequuntur facere omnis hic eaque eligendi possimus qui. Quos hic voluptas molestiae neque ut error quas.</p><p>Recusandae voluptatem illum id incidunt repudiandae iure vel. Possimus doloremque voluptatem inventore delectus est velit dignissimos. Ut ducimus quia omnis odit. Soluta quasi et quam.</p><p>Architecto quod est officiis repellat alias. Ut necessitatibus in quia est iusto doloribus sint nulla.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(11, 2, 3, 'Ut reprehenderit et illum omnis enim.', 'amet-est-quis-et-vel-consequatur-voluptates', NULL, 'Rerum saepe dolor et est ea vero. Tenetur expedita eveniet nesciunt nesciunt odio quia ullam. Provident cupiditate quod esse non quibusdam. Quibusdam aut qui in nihil beatae aliquam quia.', '<p>In dolore consequatur accusantium occaecati hic. Itaque doloremque voluptatibus magnam nobis eos. Ab sed ab accusamus ut aspernatur tempora aut exercitationem.</p><p>Laborum veritatis aut quis excepturi alias quasi voluptate voluptatem. Fugiat eligendi velit velit nostrum aperiam unde. Praesentium enim consectetur unde deserunt corporis. Sit et quia sit voluptatem. Ut aut eos officia.</p><p>Nihil praesentium mollitia corrupti voluptatibus et est neque. Id aspernatur cum quae in cupiditate dolorem qui. Ut voluptas facere incidunt.</p><p>Qui quo amet quaerat nemo. Fugit iure commodi et nemo quos voluptatem quae magnam. Ut est dicta ex ut magnam itaque. Magni velit rem alias molestiae assumenda.</p><p>Praesentium in aut at quia cupiditate sapiente assumenda. Qui exercitationem numquam eum sint nostrum. Eos laudantium est sed totam exercitationem ad ullam.</p><p>Voluptatibus quibusdam et quis sit quibusdam dolores. Vel molestiae ut itaque. Voluptatum dolor qui aperiam voluptates consequatur voluptatem quis.</p><p>Consequuntur rerum natus voluptatem minus soluta. Adipisci ipsam ut nemo natus et provident. Voluptatum omnis soluta modi rerum fugiat doloremque ut. Eos iste et occaecati delectus nisi accusantium. Dolores accusamus ut sequi quo corporis neque.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(12, 1, 2, 'Vel maxime qui omnis accusantium blanditiis similique.', 'sunt-soluta-eaque-repellendus-aut-ut-sit', NULL, 'Ea voluptate nesciunt ut quibusdam vel amet sit. Laudantium minima ab temporibus optio vero ipsum adipisci voluptatem. Inventore ut minima aut impedit esse culpa provident.', '<p>Facilis totam voluptates quia qui totam eius et. Eos aut odio reprehenderit. Quis autem minus unde alias provident necessitatibus aliquid doloribus.</p><p>Id voluptatem quia quibusdam vel quidem nostrum. Aut qui esse nobis incidunt. Ut et necessitatibus ipsa molestiae.</p><p>Sapiente eaque ut doloremque consequatur quo odio eaque necessitatibus. Et qui officia iusto et odio in. Eligendi qui est consequatur dolorem error sunt cum. Vel ut praesentium iure ratione.</p><p>Est id non voluptatem ad ut. Eos illum non est amet ad mollitia.</p><p>Rerum non quidem iusto nam qui aut. Hic rerum cumque aut. Quia eos assumenda molestias est perferendis iure numquam. Quas aut molestiae error et eius.</p><p>Id quos cumque hic assumenda. Quae mollitia dolorum et est. Molestiae quo labore corporis rem voluptatem. Expedita animi quod voluptatem rerum. Dolore similique velit est temporibus ducimus quas quasi.</p><p>Blanditiis autem autem quisquam hic unde sapiente. Ad ut est ex. Aperiam est sit aperiam quia aspernatur iusto ratione rem.</p><p>Id nobis eos temporibus molestiae. Tenetur necessitatibus exercitationem in quia laboriosam vel eos. Consequatur maiores debitis quo qui.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(13, 2, 3, 'Accusantium inventore ipsam ut iure quia.', 'et-placeat-voluptatem-et', NULL, 'Sapiente nostrum sit recusandae omnis est quaerat. Voluptatem pariatur ut omnis tenetur ut. Est placeat est ab qui vel dolores fugiat.', '<p>Est ut nostrum quos quo. Ut culpa aut eum accusantium quia enim. Iure accusamus qui excepturi enim saepe voluptates impedit. Quibusdam quia cumque repellat voluptatem ea. Sed porro laboriosam neque cumque qui officia reprehenderit.</p><p>Amet ut placeat distinctio. Aspernatur ab nesciunt rerum laudantium sit. Magnam incidunt eum quos earum nulla cupiditate.</p><p>Explicabo nobis sapiente commodi praesentium libero. Cum porro perferendis provident. Reprehenderit unde cumque suscipit.</p><p>Ex illum alias possimus id optio. Earum maiores ea sunt vel. Qui eum libero amet qui cum qui aperiam sunt. Vel quo fuga repellat accusantium et adipisci numquam. Quia consequatur quis sed nemo.</p><p>Omnis tempora nesciunt aliquam esse non ut vel nobis. Vel aut ducimus asperiores quaerat assumenda sit. Dolorum veniam magnam voluptatem cumque quia. Repellendus voluptatem expedita eum velit porro.</p><p>Ut nihil adipisci dolores corporis deleniti minima nostrum unde. Aliquam quia nulla non sit tempore maxime. Accusantium occaecati debitis enim voluptatem provident assumenda quidem. Voluptas quia est aut omnis dolores.</p><p>Dolor ut quo dolorum laborum. Sapiente sequi consequatur vero quam. Quo dignissimos dignissimos quis et dolores ut non. Optio ipsum quidem facilis tenetur quia exercitationem eius architecto.</p><p>Quam architecto similique ut qui velit. Harum accusantium numquam earum necessitatibus. Modi odio eaque voluptatibus amet mollitia fugit repellat amet. Vel voluptatibus nesciunt voluptas incidunt iure qui.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(14, 2, 1, 'Praesentium dolores occaecati sit rerum.', 'dolor-quos-doloremque-aut-tenetur-in-quidem-et', NULL, 'Molestiae qui repellendus dolorum minima. Voluptatibus eaque eos sunt cupiditate et. Eos aliquam nobis ab numquam cupiditate. Tempora incidunt dolorem tempore vero quo. Veritatis consequatur quod quia velit eos.', '<p>Voluptate aperiam ipsa at enim qui voluptate consequatur recusandae. Libero pariatur sunt esse modi inventore. Fugiat quia est et facilis vel rerum et recusandae.</p><p>Qui nihil est a facilis. Consectetur soluta delectus fugit voluptatem consectetur sint. Qui commodi est tempora blanditiis. Facere cumque dolorem rerum quam distinctio.</p><p>Fugit at magnam aut necessitatibus quasi dolor. Quasi rerum inventore sed dolorem harum modi perferendis veritatis. Dolores eaque aut neque iure ea vitae nostrum tempore. Quia sit omnis nihil iusto corrupti excepturi doloribus. Est neque ut iste voluptatem at.</p><p>Quia ducimus aut nesciunt quia officiis vel nesciunt odio. Velit aperiam optio atque.</p><p>Odit quod sed ad perspiciatis. Quod repudiandae ut facilis corporis corporis. Voluptatibus illum ex aliquam molestias expedita omnis quas. Rerum quas dolorum autem aspernatur blanditiis libero officiis.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(15, 1, 2, 'Aut velit nisi est id ipsa deleniti.', 'beatae-fuga-aut-dicta-vel', NULL, 'Consequatur sunt consequatur ut autem. Possimus consequuntur dicta veniam corrupti nihil enim ad. Et dolorem fugit debitis sit optio vel ipsam. Est quidem rerum quo incidunt voluptatem odio laudantium.', '<p>Adipisci at perspiciatis vero ratione. Esse est quis reprehenderit vel laborum eius incidunt tempore.</p><p>Deleniti facilis cumque quaerat totam fugit. Quibusdam velit temporibus voluptatibus perferendis et itaque rerum. Quae laboriosam voluptas enim consequuntur nihil nihil. Omnis reiciendis enim mollitia deserunt ut accusantium.</p><p>Autem veritatis earum cum facilis laborum maiores ratione. Sunt dolorum qui esse nemo saepe aspernatur. In ut at nam voluptatem velit quia voluptates.</p><p>Natus eos mollitia reiciendis. Eius est enim dignissimos nobis minima. Repudiandae ad temporibus deleniti sunt tempore officiis beatae. Beatae minima amet unde molestiae voluptas occaecati perferendis aut.</p><p>Exercitationem porro atque culpa quia officia doloribus. Dolor enim dolor aliquid cumque vel quia molestiae libero. Impedit est neque voluptatem quod rerum veniam.</p><p>Saepe voluptatem repudiandae voluptatem voluptatem dolores. Est praesentium distinctio incidunt. Quia reprehenderit itaque inventore dicta molestias aliquid et assumenda.</p><p>Occaecati id quisquam deserunt libero cupiditate architecto et. Consectetur tempore occaecati ut iusto. Nisi sapiente blanditiis inventore et. Numquam rerum temporibus facilis consequatur quae ducimus quia. Labore et qui eveniet ipsam.</p><p>Dolor id tempore fuga necessitatibus tempore est eligendi quod. Nihil voluptas nihil architecto laboriosam rerum quia. Similique dolores placeat tempora laborum.</p><p>Temporibus delectus ut non dolorem quam. Eum sint aut nemo sint. Odio nihil quis qui explicabo dolorem voluptates ut. Facere magnam id repellat sed porro.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(16, 1, 1, 'Cupiditate fugiat ut laudantium dolores occaecati quod pariatur atque.', 'inventore-amet-est-ut-dolor-quos-architecto-optio', NULL, 'Beatae dolores eos omnis. Accusantium voluptatibus quaerat soluta dignissimos eos nam odit. Excepturi assumenda error maiores.', '<p>Laborum nihil dolore quibusdam pariatur deserunt aliquam ratione. In corrupti enim omnis laboriosam in occaecati officiis. Dolores non dolore ipsa corrupti.</p><p>Magni aut quo doloribus provident. Recusandae explicabo quaerat in laborum vel. Ea voluptas aperiam eum possimus mollitia modi.</p><p>Et quaerat unde nulla ea voluptatem. Omnis ut quos blanditiis doloribus molestiae neque facere. Esse molestiae nihil ut reiciendis mollitia.</p><p>Qui totam quod ut. Fuga aut sunt delectus. Hic est totam ut dignissimos non excepturi.</p><p>Soluta vel aperiam tempora rem culpa et. Qui laborum illo quasi ab nisi assumenda. Nostrum dolor dolorum quia alias. Maxime amet quia quae accusantium optio modi. Totam facere aut quaerat error sit ut rerum.</p><p>A veritatis sed enim nostrum minus. Asperiores dignissimos facere velit nesciunt illo odit et. Eos perspiciatis atque eaque corporis asperiores iste vel.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(17, 2, 3, 'Totam vero sed aliquam id ut sit.', 'nisi-provident-culpa-dolore-rerum-aut', NULL, 'Ipsa aut totam voluptatem. Tenetur dignissimos deserunt quia molestiae. Nobis officia voluptates eius et consequatur omnis. Molestiae asperiores aliquam ex non officiis adipisci commodi.', '<p>Consequatur nobis commodi quo id et pariatur quaerat. Ut sunt vel voluptas voluptatem consequatur.</p><p>Vero praesentium itaque illo culpa dolorum dicta. Et minima sunt cumque debitis aspernatur placeat quasi. Nemo error nulla eos illum facere iste vel quod. Sint corrupti voluptatem illum corrupti voluptatem aut exercitationem.</p><p>Neque expedita animi pariatur facilis rerum vero. Illum culpa iste et iste quo nesciunt natus. Nemo porro vel omnis quae.</p><p>Magnam odit est quia ratione. Consequuntur eum voluptatum assumenda et explicabo laboriosam qui. Possimus quis ratione cumque consequuntur.</p><p>Ipsam tempore sed dolorem perspiciatis similique. Adipisci atque sit unde voluptas. Temporibus quasi doloribus delectus enim sit. Et est nihil autem facilis esse corrupti.</p><p>Dolorem amet rerum excepturi et. Reprehenderit distinctio quam dolores. Odio blanditiis sint beatae omnis architecto ut.</p><p>Accusamus aperiam nulla rem. Cumque mollitia sit itaque iusto nihil nesciunt dignissimos. Itaque aut ab voluptate harum omnis quam.</p><p>Eveniet alias a error iure unde ut odit. Enim modi possimus voluptas autem repudiandae in dolorem voluptas. Laudantium exercitationem suscipit fuga aut.</p><p>Neque distinctio dolor error et ipsum voluptas. Eligendi alias autem illum. Qui quam ut et nisi. Suscipit est nesciunt excepturi ut animi.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(18, 2, 2, 'Accusamus aut ullam autem nulla qui.', 'aperiam-sit-necessitatibus-voluptate', NULL, 'Quia perferendis dolorem enim suscipit. Perspiciatis laborum iusto alias. Dolorem labore soluta ut dolorem.', '<p>Nisi voluptatem omnis vel quasi blanditiis molestiae molestiae. Dolores et minus delectus quaerat quas alias. Ipsum aut id voluptate dolorem fugit consequatur.</p><p>Quae aperiam a dolore ipsam aut consequatur. Minus explicabo veritatis explicabo hic id. Enim ratione id expedita et. Odit ut suscipit nulla.</p><p>Est in et enim et est aut blanditiis voluptatem. Ut numquam ut dolores sint non at aut molestiae. Distinctio consectetur dolore qui. Doloribus et et totam at sequi sed reiciendis.</p><p>Repellendus modi consectetur rem dolores rem a. Cumque dicta aut quasi ab. Voluptate sequi nulla amet. Dolorem et libero harum. Rerum ex autem architecto impedit perferendis.</p><p>Aliquam omnis facere dolores corporis aut voluptates nemo ipsum. Magnam fugiat magnam consectetur ullam rem suscipit distinctio sint.</p><p>Laborum et sunt minus dignissimos quos. Laudantium et explicabo nobis et. Sit delectus sint consectetur esse. Sint blanditiis libero recusandae quis porro nemo vel.</p><p>Mollitia totam in quis doloremque assumenda autem nulla. Amet eveniet quia et commodi distinctio consectetur eaque aspernatur. Ad numquam qui quas aut voluptates eum officia.</p><p>Ullam eum nam dolores aut quia. Neque voluptas voluptatem et ex necessitatibus quis dolores id. Amet sit accusamus tempore voluptatem esse quia et.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(19, 1, 1, 'Rerum dignissimos est debitis commodi dolorem.', 'impedit-occaecati-cum-eos-accusantium-voluptatem', NULL, 'Ut voluptas repellat et sed quisquam saepe autem. Consequatur dolorem quae eaque maxime sit soluta sed. Dolor qui atque quo quam. Debitis sunt amet consequatur sed neque optio expedita omnis. Quas officiis iste assumenda unde non.', '<p>Soluta nam expedita praesentium porro nam. Cumque unde corrupti eius provident assumenda ullam in. Nisi soluta tempore blanditiis est.</p><p>Quidem id mollitia ipsam velit quia. Recusandae dolorem rerum qui provident rerum illo. Omnis odio earum quaerat modi a veritatis consequatur.</p><p>Similique neque accusantium nesciunt assumenda in eligendi et nostrum. Vel corporis voluptatem sunt asperiores. Velit omnis hic minus eum porro repellat voluptas. Illum nam voluptatem iure aut architecto.</p><p>Aut et qui reprehenderit ut. Eius voluptas vel earum omnis modi ut nostrum. Modi alias facere quisquam perspiciatis explicabo expedita. Minima recusandae doloribus et tenetur veritatis.</p><p>Dolorem illum et voluptatem sit dolores cumque quos. Qui culpa perspiciatis consequatur esse. Voluptas eos est exercitationem id officiis similique.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(20, 2, 2, 'Et perspiciatis quo qui cum aspernatur.', 'quis-voluptatem-velit-ipsam-voluptatem-laudantium-est-quia-excepturi', NULL, 'Incidunt ea laborum ea rem omnis commodi. Commodi quisquam dolores vel inventore dolor. Dicta similique beatae quasi doloribus. Alias voluptatem officiis quibusdam quo quam et magnam est.', '<p>Illo et sit ut autem. Eos nesciunt ex nihil doloremque quos deserunt corrupti. Corrupti eaque fugiat eaque qui corporis harum in.</p><p>Velit a corrupti veniam est ipsam dolores. Qui ut voluptas totam incidunt. Ipsam dolor soluta sunt explicabo esse cumque.</p><p>Minima sed non reprehenderit tenetur et. Pariatur qui cum accusantium consequatur magnam. Consequatur consequatur rerum consequatur voluptates et. Quibusdam sint atque et dolor eligendi omnis magni nesciunt.</p><p>Dolor placeat ipsum nemo magni quia. Facere eos atque a aut quia. Id nisi sit fuga dolorum odio ut et.</p><p>Rem nemo eligendi et facere. Itaque vitae maxime eligendi saepe necessitatibus.</p><p>Illum dolores vero eaque ut veritatis expedita. Recusandae magnam nostrum consectetur sit. Qui nihil officia est qui voluptatibus voluptas reprehenderit. Ipsum et quod delectus minus in.</p><p>Atque corporis quia quia magni fugiat voluptate. Iste pariatur aperiam est ex. Reiciendis iusto iusto similique ipsa. Aut velit sit consequatur et esse optio. Asperiores laborum hic qui aliquid nobis nesciunt.</p><p>Et non ut similique recusandae. Architecto occaecati debitis et aspernatur qui et natus. Temporibus et quia quod ut.</p><p>Est hic voluptatem incidunt. Similique distinctio delectus modi eum sequi esse est et.</p><p>Non culpa rerum deleniti cumque et ex reiciendis. Sint sapiente dolore rerum molestiae et dolore consequuntur. Dolor blanditiis rem minima in nam et ea reiciendis. Explicabo quo aut eos repudiandae officiis.</p>', NULL, '2022-01-05 21:05:26', '2022-01-05 21:05:26'),
(23, 1, 1, 'android programming', 'android-programming-2', 'post-images/npgwv8fVUPPedYf5wnhpoqDp0eXF6hpunWafdXf1.png', 'android programming kedua', '<div>android programming kedua</div>', NULL, '2022-01-05 23:33:57', '2022-01-05 23:33:57'),
(24, 1, 1, 'android programming', 'android-programming', 'post-images/WHrKow8k3zh2TZAGmDHIj9HDGv8X4v8CLxS45UAG.png', 'androdi programming tanpa foto', '<div>androdi programming tanpa foto</div>', NULL, '2022-01-06 01:57:19', '2022-01-06 07:27:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Guna Dermawan', 'gunadermawan', 'gunadermawan@gmail.com', NULL, '$2y$10$spmuq1FIS6c0LaiEVUTSjueO.TiBajtrL1r9HoUn0y56T6c4srvSe', NULL, '2022-01-05 21:05:25', '2022-01-05 21:05:25', 1),
(2, 'Jamil Mansur', 'rachel.hartati', 'ksetiawan@gmail.com', '2022-01-05 21:05:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0LsCQHkINDBTO0s1AkpGw0kwUBwkptqNzabii0d7KqhzK6Lanj3WckVXamA7', '2022-01-05 21:05:26', '2022-01-05 21:05:26', 0),
(3, 'Laila Ulva Rahayu M.Farm', 'ipurwanti', 'esitumorang@example.com', '2022-01-05 21:05:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHSo9VzcbX', '2022-01-05 21:05:26', '2022-01-05 21:05:26', 0),
(4, 'Yuni Utami M.TI.', 'fanggraini', 'suryatmi.wardaya@example.net', '2022-01-05 21:05:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cZ8XI5pAGY', '2022-01-05 21:05:26', '2022-01-05 21:05:26', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
