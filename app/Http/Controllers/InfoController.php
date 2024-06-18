<?php

namespace App\Http\Controllers;

use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $info = Info::all();
        return response()->json($info);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $info = Info::create($request->all());
        return response()->json($info);
    }

    /**
     * Display the specified resource.
     */
    public function show(Info $info)
    {
        return response()->json($info);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Info $info)
    {
        $info->update($request->all());
        return response()->json($info);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Info $info)
    {
        $info->delete();
    }
}
