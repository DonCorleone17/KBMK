<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kata;
use DB;

class KataController extends Controller
{
    public function index()
    {
        $data['list_kata'] = DB::table('kata')
        ->select('*','kata.id as idk')
        ->join('kategori','kategori.id','kata.id_kategori')
        ->orderBy('nama_kata') 
        ->get();
        // dd($data['list_kata']); 
        return view('admin.kata.index',$data);
    }

    public function create()
    {
        $data['list_kategori'] = DB::table('kategori')->select('*')->get();
        // dd($data['list_kategori']);
        return view('admin.kata.create',$data);
    }

    public function store(Request $request)
    {
        $user = new Kata;
        $user->nama_kata = request('nama_kata');
        $user->id_kategori = request('id_kategori');
        $user->pelafalan = request('pelafalan');
        $user->audio = request('audio');
        $user->deskripsi = request('deskripsi');
        $user->save();

        return redirect('admin/kata')->with('success','Data Berhasil Ditambahkan');
        // dd(request()->all());
    }

    public function show($id)
    {
        $data['kata'] = Kata::select('*')->where('id',$id)->get();
        $data['kata'] = $data['kata'][0];

        return view('admin.kata.show',$data);
    }

    public function edit($id)
    {
        // dd($id);
        $data['list_kategori'] = DB::table('kategori')->select('*')->get();
        $data['kata'] = DB::table('kata')
        ->select('kata.*','kategori.nama_kategori',DB::raw('kategori.id as id_kategori'))
        ->join('kategori','kategori.id','kata.id_kategori')
        ->where('kata.id',$id)
        ->first();
        // dd($data['kata']);
        return view('admin.kata.edit',$data);
    }

    public function update(Request $request)
    {
        DB::table('kata')->where('id', $request->id)->update([
                'id_kategori'=>$request->id_kategori,
                'nama_kata'=>$request->nama_kata,
                'pelafalan'=>$request->pelafalan,
                'audio'=>$request->audio,
                'deskripsi'=>$request->deskripsi
            ]);
        return redirect('admin/kata')->with('success','Data Berhasil Diubah');
    }

    public function destroy($kata)
    {
        $blog = Kata::findOrFail($kata);
        $blog->delete();
        return redirect('admin/kata')->with('danger','Data Berhasil Dihapus');
    }
}

// $data['list_kata']
// SELECT kategori.id as id_kategori, kategori.nama_kategori, kata.id as id_kata, kata.nama_kata, kata.deskripsi
// FROM `kata`
// join kategori on kategori.id=kata.id_kategori;