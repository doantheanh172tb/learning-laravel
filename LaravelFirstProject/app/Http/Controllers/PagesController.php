<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    function contact()
    {
        $name = "some random data<script>alert('some data!')</script>";
        $isAdmin = true;
        $peoples = [
            'Anh Doan The',
            'Thu Nguyen Xuan',
            'Thinh Doan Gia'
        ];
        return view('contact')
            ->with('peoples', $peoples)
            ->with('isAdmin', $isAdmin)
            ->with('isAdmin', $isAdmin)
            ->withName($name);
    }
}
