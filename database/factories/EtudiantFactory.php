<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Etudiant>
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public static function departs () : array
    {
        return [
            'sciences santé',
            'ggt',
            'gcv',
            'sae',
            'finBanq',
            'sociales'
        ];
    }
    public function definition(): array
    {
        return [
            'nom'=>fake()->name(),
            'matricule'=>rand(2000000,241001000),
            'departement'=>$this->departs()[rand(0,5)],
            'valable'=>fake()->boolean(45)

        ];
    }
}
