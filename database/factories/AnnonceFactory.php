<?php

namespace Database\Factories;

use App\Services\IsFor;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Annonce>
 */
class AnnonceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'content'=>fake()->sentences(4),
            'isFor'=>IsFor::isFor()[rand(0,count(IsFor::isFor()))]
        ];
    }
}
//https://console.twilio.com/user/account/phone-numbers/verified