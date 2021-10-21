<?php

namespace App\Model;

class Position extends AbstractModel
{
    /** @var array  */
    protected static $mandatoryFields = ['name'];

    /** @var string  */
    protected static $tableName = 'position';

    public function employer()
    {
        return $this->morphTo(Employer::class, 'employer_position');
    }
}

