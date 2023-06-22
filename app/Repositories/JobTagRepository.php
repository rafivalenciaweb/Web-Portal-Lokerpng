<?php

namespace App\Repositories;

use App\Models\Tag;

/**
 * Class JobTagRepository
 *
 * @version June 22, 2020, 5:43 am UTC
 */
class JobTagRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Tag::class;
    }
}
