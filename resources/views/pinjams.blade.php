<!DOCTYPE html>
<html>
<head>
	<title>Laporan</title>
</head>
<body onload="window.print()" style="font-family: calibri; text-align: center;">
<h1 style="font-family: calibri;" align="center">Laporan Data Peminjaman</h1>
<table border="1" style="font-family: calibri;" align="center">
	<thead>
        <tr align="center">
          <th scope="col">No</th>
          <th scope="col">Nama Barang</th>
          <th scope="col">Merek Barang</th>
          <th scope="col">Nama Peminjam</th>
          <th scope="col">Nis Peminjam</th>
          <th scope="col">Quantity</th>
        </tr>
      </thead>
      <tbody>
        @foreach($pinjam as $p)
      <tr>
        <th>{{$p->id}}</th>
        <td>{{ $p->nama_barang}}</td>
        <td>{{ $p->merek_barang}}</td>
        <td>{{$p->nama_peminjam}}</td>
        <td>{{$p->nis_peminjam}}</td>
        <td>{{ $p->qty}}</td>
      </tr>
      @endforeach
    </tbody>                           
</table>
</body>
</html>
