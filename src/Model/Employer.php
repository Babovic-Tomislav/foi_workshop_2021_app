<?php

namespace App\Model;

class Employer extends AbstractModel
{
    /** @var array  */
    protected static $mandatoryFields = ['address_id', 'name'];

    /** @var string  */
    protected static $tableName = 'employer';

    /** @var array  */
    protected static $guard = ['id'];

    public function address()
    {
        return $this->belongsTo(Address::class);
    }

    public function category()
    {
        return $this->morphTo(Category::class, 'employer_category');
    }

    public function position()
    {
        return $this->morphTo(Position::class, 'employer_position');
    }
}

