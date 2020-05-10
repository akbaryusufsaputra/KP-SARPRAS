@extends('layouts.sidebar')

@section('content')
<div class="container">
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Tambah barang yang hilang</h6>
		</div>
		<div class="card-body">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
				Tambah Kehilangan
			</button>
			<div class="float-right ">
				<div><a href="/printhilang" class="btn btn-info"> Print </a> </div>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form method="post" action="/kehilangan/create">
								@csrf
								<div class="card-body">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Nama Peminjam</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="nama_peminjam">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Nama Barang</label>
										<div class="col-sm-9">
											<select name="nama_barang" class="form-control">
												<option value=""></option>
												@foreach($barang as $b)
												<option value="{{$b->nama_barang}}">{{$b->nama_barang}}</option>
												@endforeach
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Tanggal</label>
										<div class="col-sm-9">
											<input type="date" class="form-control" name="tanggal">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Jumlah</label>
										<div class="col-sm-9">
											<input type="number" class="form-control" name="jumlah">
										</div>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary">Simpan</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
<table class="table table-bordered">
				<thead>
					<tr align="center">
						<th scope="col">No</th>
						<th scope="col">Nama peminjam</th>
						<th scope="col">Nama barang</th>		
						<th scope="col">Tanggal</th>
						<th scope="col">Jumlah</th>
						<th scope="col">Aksi</th>
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
						<td>
							<!-- <a href="/" class="btn btn-warning">edit</a> -->
							<a href="hilang/hapus/{{ $hilang->id }}" class="btn btn-danger">delete</a>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
	@endsection
