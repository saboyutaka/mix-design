<?php

namespace App\Http\Controllers;

class BooksController extends Controller
{
    public function __construct() {
    }

    public function index() {
        return view('books.index');
    }
}
