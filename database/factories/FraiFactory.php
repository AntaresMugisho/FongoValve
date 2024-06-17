<?php

namespace Database\Factories;

use App\Models\Etudiant;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Frai>
 */
class FraiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public $etudiants;
    public $transaction ;
    public function paiement () : static
    {   
        $reste = 0;
        $this->etudiants = Etudiant::all();
        foreach ($this->etudiants as $key => $etudiant) {
            if ($etudiant['valable']) {
                $reste = 0;
            }else $reste = rand(13000,20000);
            $this->transaction = $etudiant->frais()->create([
                'categorie_frais_id'=>rand(10,12),
                'montant'=>rand(13000,700000),
                'reste'=> $reste
            ]);
        }
        return $this->state( fn (array $attributes)=>[
            $this->transaction
        ]);
    }
    public function definition(): array
    {
        return [
            
        ];
    }
}
