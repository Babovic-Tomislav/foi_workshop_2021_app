<?php

namespace App\Model;

class Category extends AbstractModel
{
    /** @var array  */
    protected static $mandatoryFields = ['name'];

    /** @var string  */
    protected static $tableName = 'category';
}

