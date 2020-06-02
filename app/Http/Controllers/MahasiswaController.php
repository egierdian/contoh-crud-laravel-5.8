<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
 
 
class MahasiswaController extends Controller
{
    public function index()
    {
    	// mengambil data dari table mahasiswa
    	$mahasiswa = DB::table('mahasiswa')->paginate(10);
    	//get untuk mengambil semua data

 
    	// mengirim data mahasiswa ke view index
    	return view('index',['mahasiswa' => $mahasiswa]);
 
    }

    public function tambah()
    {
    	return view('tambah');
    }

    public function store(Request $request)
    {
	// insert data ke table mahasiswa
    	DB::table('mahasiswa')->insert([
		'nama' => $request->inputnama,
		'telp' => $request->inputtelp,
		'email' => $request->inputemail,
		'alamat' => $request->inputalamat
		]);
		// alihkan halaman ke halaman mahasiswa
    	return redirect('/mahasiswa');
	}
	public function edit($id)
	{
		// mengambil data mahasiswa berdasarkan id yang dipilih
		$mahasiswa = DB::table('mahasiswa')->where('id',$id)->get();
		// passing data mahasiswa yang didapat ke view edit.blade.php
		return view('edit',['mahasiswa' => $mahasiswa]);
	}
	public function update(Request $request)
	{	
		// update data mahasiswa
		DB::table('mahasiswa')->where('id',$request->id)->update([
		'nama' => $request->nama,
		'telp' => $request->telp,
		'email' => $request->email,
		'alamat' => $request->alamat
		]);
		// alihkan halaman ke halaman mahasiswa
		return redirect('/mahasiswa');
	}
	public function hapus($id)
	{
		// menghapus data mahasiswa berdasarkan id yang dipilih
		DB::table('mahasiswa')->where('id',$id)->delete();
		
		// alihkan halaman ke halaman mahasiswa
		return redirect('/mahasiswa');
	}


	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;

    		// mengambil data dari table mahasiswa sesuai pencarian data
		$mahasiswa = DB::table('mahasiswa')
		->where('nama','like',"%".$cari."%")
		->paginate();

    	// mengirim data mahasiswa ke view index
		return view('index',['mahasiswa' => $mahasiswa]);

	}
}