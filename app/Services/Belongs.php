<?php
namespace App\Services;
class Belongs
{
    public static $infos;
    public static function departs () : array
    {
        return [
            'GGT', 'GCV', 'SAE' , 'SIF', 'MEDECINE' , 'ANR', 'DROIT','ENTREPRENEURIAT ET GESTION DES AFFAIRES',
            'SERVICE SOCIAL', 'COMMUNICATION','SCIENCES INFORMATIQUES','OPHTA','SAGE FEMME'
        ];
    }
    public static function specialize () : array
    {
        return [
            'GGT'=>['SSR','RSM'],
            'SAE' =>['Fin Banque', 'Marketing'],
        ];
    }
    public static function departCode () : array
    {
        return [
            'GGT'=>'100',
            'GCV'=>'200',
            'SAE'=>'300',
            'SIF'=>'400',
            'MEDECINE'=>'500', 
            'ANR'=>'600',
            'DROIT'=>'250',
            'ENTREPRENEURIAT ET GESTION DES AFFAIRES' =>'350',
            'SERVICE SOCIAL'=>'450',
            'COMMUNICATION'=> '550',
            'SCIENCES INFORMATIQUES'=>'650',
            'OPHTA' =>'120',
            'SAGE FEMME' => '220',
        ];
    }
    public static function belongs () : array
    {
        $promotion =(string) rand((int)date('Y'),(int)date('Y')-9);
        $allDeparts = static::departs();

        $order = (string) rand(1,200);
        if ($order<10) {
            $order = '00' . $order;
        } else if ($order>=10 && $order<100) {
            $order = '0' . $order;
        }else $order ;
        
        $depart = $allDeparts[rand(0,count($allDeparts)-1)];
        $matricule = substr($promotion,-2) . static::departCode()[$depart] . $order;
        static::$infos =  [
            'promotion'=>$promotion,
            'depart' => $depart,
            'matricule' => $matricule
        ];
        return static::$infos;
    }
}