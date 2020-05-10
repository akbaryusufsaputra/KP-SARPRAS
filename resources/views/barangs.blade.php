<!DOCTYPE html>
<html>
<head>
	<title>Laporan</title>
</head>
<body onload="window.print()" style="font-family: calibri; text-align: center;">
<h1 style="font-family: calibri;" align="center">Laporan Data Barang</h1>
<table border="1" style="font-family: calibri;" align="center">
	<thead>
        <tr align="center">
          <th scope="col">No</th>
          <th scope="col">Nama Barang</th>
          <th scope="col">Merk Barang</th>
          <th scope="col">Harga Barang</th>
          <th scope="col">Lokasi Barang</th>
          <th scope="col">Quantity</th>
        </tr>
      </thead>
      <tbody>
        @foreach($barang as $p)
      <tr>
        <th>{{$p->id}}</th>
        <td>{{ $p->nama_barang}}</td>
        <td>{{ $p->merek_barang}}</td>
        <td>{{$p->harga_barang}}</td>
        <td>{{ $p->lokasi_barang}}</td>
        <td>{{$p->qty}}</td>
      </tr>
      @endforeach
    </tbody>                              
</table>
</body>
</html>
