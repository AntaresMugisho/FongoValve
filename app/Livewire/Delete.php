<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Communicare;

class Delete extends Component
{
    public $num;
    public function render()
    {
        return view('livewire.delete');
    }
    public function  destroyCommun ()
    {   
        
        $commun = Communicare::findByOrder($this->num);
        Communicare::destroy($commun);
    }
}
