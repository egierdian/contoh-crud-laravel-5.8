<!DOCTYPE html>
<html>
	<head>
		<title>Mahasiswa</title>
		<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>

	<body>
		<!--navbar-->
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-3">
				<div class="container">
				  <a class="navbar-brand" href="/mahasiswa">Mahasiswa</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>

				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
				    <ul class="navbar-nav ml-auto">
				      <li class="nav-item active">
				        <a class="nav-link" href="/mahasiswa">Home <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="/mahasiswa/tambah">Tambah Mahasiswa</a>
				      </li>
				      <!--li class="nav-item">
				        <a class="nav-link disabled" href="#">Disabled</a>
				      </li-->
				    </ul>
				  </div>
			  </div>
			</nav>
		<!--end navbar-->

	 	<div class="container">
			<div class="card">
				<div class="card-body">
					<h3>Data Mahasiswa</h3>
					<form action="/mahasiswa/cari" method="GET" class="form-inline right">
						<input class="form-control" type="text" name="cari" placeholder="Cari Pegawai .." value="{{ old('cari') }}">
						<input class="btn btn-primary ml-3" type="submit" value="CARI">
					</form>
	 
					<!--a href="/mahasiswa/tambah"> + Tambah Pegawai Baru</a-->
					<br/>
					<br/>
					<table class="table table-bordered table-responsive">
					<tr>
						<th>Nama</th>
						<th>Telp</th>
						<th>Email</th>
						<th>Alamat</th>
						<th>Aksi</th>
					</tr>
					@foreach($mahasiswa as $p)
					<tr>
						<td>{{ $p->nama }}</td>
						<td>{{ $p->telp }}</td>
						<td>{{ $p->email }}</td>
						<td>{{ $p->alamat }}</td>
						<td>
						<a class="btn btn-danger btn-sm" href="/mahasiswa/edit/{{ $p->id }}">Edit</a>
						<a class="btn btn-warning btn-sm" href="/mahasiswa/hapus/{{ $p->id }}">Hapus</a>
						</td>
					</tr>
					@endforeach
					</table>
					<br/>
					Halaman : {{ $mahasiswa->currentPage() }} <br/>
					Jumlah Data : {{ $mahasiswa->total() }} <br/>
					Data Per Halaman : {{ $mahasiswa->perPage() }} <br/>
	 
					{{ $mahasiswa->links() }}
				</div>
			</div>
		</div>

		<!--footer-->
		<div class="row bg-dark text-center mt-3">
		  	<div class="card-body">
		    	<footer>@2020 Egi Erdian</footer>
		 	</div>
		</div>
		<!--end footer-->


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>