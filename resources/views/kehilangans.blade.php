<!DOCTYPE html>
<html>
<head>
	<title>Laporan</title>
</head>
<body onload="window.print()" style="font-family: calibri; text-align: center;">
<h1 style="font-family: calibri;" align="center">Laporan Data Kehilangan</h1>
<table border="1" style="font-family: calibri;" align="center">
	<thead>
        <tr align="center">
            <th scope="col">No</th>
            <th scope="col">Nama peminjam</th>
            <th scope="col">Nama barang</th>		
            <th scope="col">Tanggal</th>
            <th scope="col">Jumlah</th>
        </tr>
    </thead>
    <tbody>
    @foreach($kehilangan as $hilang)
    <tr>
        <th>{{$hilang->id}}</th>
        <td>{{$hilang->nama_peminjam}}</td>
        <td>{{$hilang->nama_barang}}</td>
        <td>{{$hilang->tanggal}}</td>
        <td>{{$hilang->jumlah}}</td>
    </tr>
    @endforeach
    </tbody>                         
</table>
</body>
</html>
