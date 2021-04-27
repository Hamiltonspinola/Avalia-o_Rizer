<?php

use App\Http\Controllers\ChamadoController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/home/create', [ChamadoController::class, 'create'])->name('home.create');
Route::post('/home/create', [ChamadoController::class, 'store'])->name('home.store');
Route::get('home/show/id', [ChamadoController::class], 'show')->name('home.show');
Route::get('/home/atender-chamado/{id}', [ChamadoController::class, 'atenderChamado'])->name('atender.chamado');
Route::get('/home/resolver-chamado/{id}', [ChamadoController::class, 'resolverChamado'])->name('resolver.chamado');
Route::get('/homes', [ChamadoController::class, 'index'])->name('home');

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
