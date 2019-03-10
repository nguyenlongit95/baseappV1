<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menus extends Model
{
    protected $table="menus";

    protected $fillable=[
        "Name",
        "Slug",
        "Parent_id",
        "Level",
        "Count_Child",
        "Status",
        "Info",
        "created_at",
        "updated_at"
    ];
}
