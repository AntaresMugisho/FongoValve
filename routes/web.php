<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\usersController;
use App\Http\Requests\StoreCommunicareRequest;
use App\Http\Controllers\webCommunicareCntrllr as webCommun;


// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/',[webCommun::class,'commun'])->name('commun');
// Route::get('/create',[webCommun::class,'creation'])->name('creation');
// Route::post('/create',[webCommun::class,'create'])->name('create');
// Route::get('/update/{num}',[webCommun::class,'updating'])->name('updating');
// Route::put('/update/{num}',[webCommun::class,'update'])->name('update');
// Route::delete('/{num}',[webCommun::class,'destroyCommun'])->name('delete');
// Route::get('/profile', function () {
//     // Only authenticated users may access this route...
// })->middleware('auth.basic');
Route::post('/login',[usersController::class,'login'])->name('login');
