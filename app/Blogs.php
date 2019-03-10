<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blogs extends Model
{
    //
    protected $table="blogs";

    protected $fillable=[
        "Title",
        'Slug',
        "Info",
        "Description",
        "Author",
        "Tags",
        "Image",
        "idCategoryBlog"
    ];
}
