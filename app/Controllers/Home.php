<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return view('index');
    }
    public function verPedidosEngardado()
    {
        return view('pedidosEncargado');
    }
}
