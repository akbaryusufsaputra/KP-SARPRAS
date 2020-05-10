<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\barang;
use App\Kerusakan;
use App\Kehilangan;
use App\pinjam;


class PrintController extends Controller
{
    public function printbarang(){       
        $barang = barang::all(); 
        return view('barangs', ['barang' => $barang]);   
    }
    public function printpinjam()
    {
        $pinjam = pinjam::all();
        return view('pinjams',['pinjam' => $pinjam]);
    }
    public function printhilang()
    {
    	$kehilangan = Kehilangan::all();
    	return view('kehilangans',compact(['kehilangan']));
    }
    public function printrusak()
    {
        $kerusakan = Kerusakan::all();
        return view('kerusakans',compact(['kerusakan']));
    }
}
