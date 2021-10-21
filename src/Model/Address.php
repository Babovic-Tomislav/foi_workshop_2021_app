<?php

namespace App\Model;

class Address extends AbstractModel
{
    /** @var array  */
    protected static $mandatoryFields = ['city_id', 'name'];

    /** @var string  */
    protected static $tableName = 'address';

    public function employer()
    {
        return $this->hasMany(Employer::class);
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }
}

