<?php

namespace Database\Factories;

use Database\Factories\EtudiantFactory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\categorieFrai>
 */
class categorieFraiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function cat () : array 
    {
        return [
            'frais académiques',
            'carte d\'étudiant',
            'frais de stage'
        ];
    }
    public function montant(string $cat, string $depart) : int 
    {
       if ($cat =='frais académiques'){
        if ($depart == 'sciences santé') {
            return 70000;
        }else return 50000;
       }else return rand(13000,200000);
    }
    public function definition(): array
    {
        return [
            'nom'=>$this->cat()[rand(0,2)],
            'datelimite'=>fake()->dateTimeBetween('+2 months','+4 months'),
            'departementsConternes'=>EtudiantFactory::departs()[rand(0,5)],
            'montantrecquis'=> $this->montant($this->cat()[rand(0,2)],EtudiantFactory::departs()[rand(0,5)])
        ];
    }
}
