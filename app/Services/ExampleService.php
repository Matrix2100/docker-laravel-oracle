<?php

namespace App\Services;

use App\Repositories\ExampleRepository;

class ExampleService
{

    public function __construct(protected ExampleRepository $militarRepository)
    {
        // Dependency Injection
    }

    public function showById(string $matricula)
    {
        return $this->militarRepository->showById($matricula)->toArray();
    }
}
