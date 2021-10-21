<?php

namespace App\Repository;

use App\Model\Employer;

class EmployerRepository1 implements EmployerRepositoryInterface
{

    public function getById(int $id)
    {
        return Employer::find($id);
    }
}

