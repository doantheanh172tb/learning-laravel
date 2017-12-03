<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class BlogsController extends Controller
{
    function index()
    {
        return view('blog.index')
            ->with('blogs', Blog::all());
    }
}
