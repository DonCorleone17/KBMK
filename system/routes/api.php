<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminApiController;
use App\Http\Controllers\IndexApiController;
use App\Http\Controllers\KataApiController;
use App\Http\Controllers\IdiomApiController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();

    Route::get('/', [AdminApiController::class, 'index']);
    Route::get('kata', [KataApiController::class, 'index']);
    Route::get('kata/create', [KataApiController::class, 'create']);
    Route::post('kata', [KataApiController::class, 'store']);
    Route::get('kata/{kata}', [KataApiController::class, 'show']);
    Route::get('kata/{kata}/edit', [KataApiController::class, 'edit']);
    Route::post('kata/update/{id}', [KataApiController::class, 'update']);
    Route::delete('kata/{kata}', [KataApiController::class, 'destroy']);

     Route::get('idiom', [IdiomApiController::class, 'index']);
    Route::get('idiom/create', [IdiomApiController::class, 'create']);
    Route::post('idiom', [IdiomApiController::class, 'store']);
    Route::get('idiom/{kata}', [IdiomApiController::class, 'show']);
    Route::get('idiom/{kata}/edit', [IdiomApiController::class, 'edit']);
    Route::post('idiom/update/{id}', [IdiomApiController::class, 'update']);
    Route::delete('idiom/{kata}', [IdiomApiController::class, 'destroy']);

    Route::get('index', [IndexApiController::class, 'index']);
    Route::get('index/create', [IndexApiController::class, 'create']);
    Route::post('index', [IndexApiController::class, 'store']);
    Route::get('index/{kata}', [IndexApiController::class, 'show']);
    Route::get('index/{kata}/edit', [IndexApiController::class, 'edit']);
    Route::post('index/update/{id}', [IndexApiController::class, 'update']);
    Route::delete('index/{kata}', [IndexApiController::class, 'destroy']);
