<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\InfoController;
use App\Http\Controllers\Api\usersController;

// use App\Http\Controllers\Api\CommunicareController as com;
// use App\Http\Controllers\Api\nfsApiController as nfs;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::get('/test',[usersController::class,'test']);
Route::post('/login',[usersController::class,'loginAccess'])->name('Api.login');
Route::post('/loginAs',[usersController::class,'loginAs'])->name('Api.loginAs');

Route::resource("/info", [InfoController::class]);