<?php

namespace App\Repository;

use App\Model\Employer;
use App\Service\Database\Connection;
use PDO;

class EmployerInterface2 implements EmployerRepositoryInterface
{
    public function getById(int $id)
    {
        $pdo = Connection::get()->getConnection();

        $sql = "SELECT * from employer WHERE id = :id";

        $stm = $pdo->prepare($sql);
        $stm->execute(['id' => $id]);
        $result = $stm->fetchAll(PDO::FETCH_ASSOC);

        return Employer::create($result[0]);
    }
}

