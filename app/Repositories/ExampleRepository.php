<?php

namespace App\Repositories;

use App\Models\Example;

class ExampleRepository
{
    public function showById(int $id)
    {
        return Example::query()->findOrFail($id);
    }
}
