<?php

namespace App\Http\Controllers;

use App\Services\ExampleService;
use App\Services\MilitarService;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class ExampleController extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function __construct(protected ExampleService $exampleService)
    {
        // Dependency Injection
    }
    public function showById(string $id)
    {
        return mb_convert_encoding($this->exampleService->showById($id), 'UTF-8', 'ISO-8859-1');
    }
}
