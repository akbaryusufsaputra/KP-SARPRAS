@extends('layouts.sidebar')

@section('content')
<div class="container">
 <h1 style="text-align:center;" >WELCOME</h1>
    @if(Auth::user()->role == 'pelanggan')
      <h1 style="text-align:center;"> You are logged in as Peminjam Barang! </h1>
    @endif
    @if(Auth::user()->role == 'admin')
      <h1 style="text-align:center;"> You are logged in as Admin! </h1>
    @endif
</div>
@endsection