<?php
 namespace App\Services;
class Functions 
{
    public static $functArr;
    public static function functions () : array
    {
        return  [
            'recteur','sécretaire académique','chef de département','vise recteur ',' DG'
        ];
    }
    public static function sign (int $random) : array
    {   
        $takens = [];
        for ($i=0; $i < $random; $i++) { 
            // for ($item=0; $item < count(Functions::functions()) ; $item++) { 
            //     !in_array($item,$takens)? array_push($takens, $item) : ;
            // }
            $taken = Functions::functions()[rand(0, count(Functions::functions())-1)];
            if (!in_array($taken, $takens)) {
                array_push($takens, $taken);
            }
        }
        return $takens;
    }
}