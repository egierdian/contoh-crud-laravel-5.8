<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 50; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    			DB::table('mahasiswa')->insert([
    			'nama' => $faker->name,
    			'telp' => $faker->e164PhoneNumber,
    			'email' => $faker->email,
    			'alamat' => $faker->address
    		]);
    		}
    	}
}
