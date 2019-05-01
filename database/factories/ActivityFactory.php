<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Activity;
use Faker\Generator as Faker;

$factory->define(Activity::class, function (Faker $faker) {
    return [
        'id_user' => '3',
        'activity' => $faker->sentence,
    ];
});
