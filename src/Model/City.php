<?php

namespace App\Model;

class City extends AbstractModel
{
    /** @var array  */
    protected static $mandatoryFields = ['zip_code', 'name'];

    /** @var string  */
    protected static $tableName = 'city';
}

