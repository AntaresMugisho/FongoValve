<?php

namespace App\Http\Controllers\Api;

use App\Models\Communicare;
use App\Services\QueryParams;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\CommunicareResource;
use App\Http\Resources\CommunicareCollection;
use App\Http\Requests\StoreCommunicareRequest;
use App\Http\Requests\UpdateCommunicareRequest;
use PhpParser\Node\Stmt\Continue_;


class CommunicareController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function getCommunicare($order)
    {
        return new CommunicareResource (
            Communicare::findByOrder($order)
        );
    }
    public function getCommunicares (Request $request)
     {
        return new CommunicareCollection(Communicare::all());
     }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCommunicareRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Communicare $communicare)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Communicare $communicare)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCommunicareRequest $request, Communicare $communicare)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Communicare $communicare)
    {
        //
    }
}
