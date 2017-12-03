<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class BlogsController extends Controller
{
    function index()
    {
        $blogs = Blog::all();
        return view('blog.index')
            ->with('blogs', $blogs);
    }

    function show($id)
    {
        $blog = Blog::find($id);
        return view('blog.show')
            ->with('blog', $blog);
    }
}
