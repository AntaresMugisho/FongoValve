<?php

namespace App\Services;
use Illuminate\Http\Request;
class QueryParams
{
    protected static $columsParams = [
        'pour'=>'concerns',
        'num'=>'order',
    ];
    protected static $actions = [
        'page'=>'paginate',
        'limit'=>'limit'
    ];
    protected static $paramsOperators = [
        'pour'=>['='],
        'num'=>['=','>','<'],
    ];
    public static function filter ( Request $request) : array
    {
        $parameters=[];
        $query = $request->query();
        foreach (static::$actions as $key => $action) {
            if (isset($query[$key])) {
              $parameters [$action] = $query[$key];
            }
        }
        foreach (static::$paramsOperators as $param => $operators) {
            $column = static::$columsParams[$param];
            if (isset($query[$param])) {
                $parameters ['column'] = $column;
                $parameters ['value'] = $query[$param];
            }
        }
        return $parameters;
    }
}  