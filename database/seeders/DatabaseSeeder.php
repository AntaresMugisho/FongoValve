<?php

namespace Database\Seeders;

use App\Models\Frai;
use App\Models\User;
use App\Models\Admin;
use App\Models\Etudiant;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Communicare;
use App\Models\categorieFrai;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(200)->create();
        //Etudiant::factory(20)->create();
            //categorieFrai::factory(3)->create();
            // Frai::factory()->paiement()->create();
            // Admin::factory(10)->has(Communicare::factory(8),'communicares')->create();
            // Admin::factory(3)->has(Communicare::factory(5),'communicares')->create();
            // Admin::factory(2)->create();
    }
}
