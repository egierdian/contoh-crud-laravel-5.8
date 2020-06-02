<!DOCTYPE html>
<html>
<head>
	<title>CRUD sederhana</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
	<style type="text/css">
		.pagination li{
			float: left;
			list-style-type: none;
			margin:5px;
		}
	</style>

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
						<h3>Tambah Mahasiswa</h3>
		 
						<table class="table table-bordered"  border="0">
		 
						<form action="/mahasiswa/store" method="post">
						{{ csrf_field() }}
						<tr>
							<td>Nama</th>
								<td><input type="text" name="inputnama" required="required"></td>
						</tr>
						<tr>
							<th>telepon</th>
								<td><input type="text" name="inputtelp" required="required"></td>
						</tr>
						<tr>
							<th>email</th>
								<td><input type="text" name="inputemail" required="required"> <br/></td>
						</tr>
						<tr>
							<th>alamat</th>
								<td><textarea name="inputalamat" required="required"></textarea></td>
						</tr>
							<tr><td></td>
							<td><input class="btn btn-danger btn-sm" type="submit" value="Simpan Data"></td>
						</tr>
						</form>
					</table>
				</div>
			</div>
		</div>


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>