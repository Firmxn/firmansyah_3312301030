<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ListController extends Controller
{
    public function listProduct()
    {
        $product = [
            ['id' => 1, 'produk' => 'Arduino'],
            ['id' => 2, 'produk' => 'Microcontroller'],
            ['id' => 3, 'produk' => 'Motor Control'],
            ['id' => 4, 'produk' => 'Breakout'],
            ['id' => 5, 'produk' => 'Serial'],
        ];
        return view('list_product', ['data' => $product]);
    }
}
