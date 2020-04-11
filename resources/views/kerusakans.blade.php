<!DOCTYPE html>
<html>
<head>
	<title>Laporan</title>
</head>
<body onload="window.print()" style="font-family: calibri; text-align: center;">
<h1 style="font-family: calibri;" align="center">Laporan Data Rusak</h1>
<table border="1" style="font-family: calibri;" align="center">
	<thead>
        <tr align="center">
            <th scope="col">No</th>
            <th scope="col">Nama peminjam</th>
            <th scope="col">Nama barang</th>
            <th scope="col">Kerusakan</th>
            <th scope="col">Tanggal</th>
            <th scope="col">Lokasi barang</th>
            <th scope="col">Jumlah</th>
        </tr>
    </thead>
    <tbody>
        @foreach($kerusakan as $rusak)
        <tr>
            <th>{{$rusak->id}}</th>
            <td>{{$rusak->nama_peminjam}}</td>
            <td>{{$rusak->nama_barang}}</td>
            <td>{{$rusak->kerusakan}}</td>
            <td>{{$rusak->tanggal}}</td>
            <td>{{$rusak->lokasi_barang}}</td>
            <td>{{$rusak->jumlah}}</td>
        </tr>
        @endforeach
    </tbody>                         
</table>
</body>
</html>
