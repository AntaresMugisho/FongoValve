<?php

namespace Database\Factories;

use App\Services\Belongs;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    public function definition(): array
    {
        Belongs::belongs();
        return [
            'name' => fake()->name(),
            'prenom' => fake()->lastName(),
            'promotion' => Belongs::$infos ['promotion'],
            'depart' => Belongs::$infos ['depart'],
            'matricule' => Belongs::$infos ['matricule'],
            'password' => Hash::make('Hau@2000'),
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
