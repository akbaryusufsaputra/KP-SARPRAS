<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kelas extends Model
{
    protected $table = "kelas";

    protected $fillable = ['nama_kelas','kapasitas_siswa'];
}
