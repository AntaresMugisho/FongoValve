<?php

namespace Database\Factories;

use Brick\Math\BigInteger;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Services\Functions;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Admin>
 */
class AdminFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public $functions;
    public function definition(): array
    {
        $this->functions = Functions::functions();
        return [
            'name'=>fake()->name('male'),
            'matricule'=>fake()->numberBetween(2210100, 22100437),
            'password'=>fake()->password(8,10),
            'function'=>$this->functions[rand(0, count($this->functions)-1)],
            'sign'=>fake()->image(null,100,150,'signature'),
            'sceau'=>fake()->image(null,100,150,'seal'),
        ];
    }
}
