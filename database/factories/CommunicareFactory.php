<?php

namespace Database\Factories;

use Brick\Math\BigInteger;
use App\Services\Functions;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Communicare>
 */
class CommunicareFactory extends Factory
{   
    public $type = [
        'etudiants',
        'professeurs',
        'chef de départements'
    ];
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'order'=> rand(001, 100),
            'concerns'=>$this->type[rand(0, count($this->type)-1)],
            'title'=>fake()->title('information'),
            'signedBy'=>json_encode(Functions::sign(3)),
            'content'=>fake()->sentences(4,true),
            'file'=>fake()->image(null,100,150,null),
            'expire'=>fake()->dateTimeBetween('+2 months','+4 months',null)
        ];
    }
}
