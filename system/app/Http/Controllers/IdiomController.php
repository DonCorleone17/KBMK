<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kategori;
use DB;

class IdiomController extends Controller
{
    public function index()
    {
        // $data['list_kata'] = Kata::where('kategori','idiom')->get();
        $data['list_kategori'] = DB::table('kategori')->select('*')->orderBy('nama_kategori')->get();
        // dd($data['list_kategori']);
        return view('admin.idiom.index',$data);
    }

    public function create()
    {
        return view('admin.idiom.create');
    }

    public function store(Request $request)
    {
        $user = new Kategori;
        $user->nama_kategori = request('nama_kategori');
        // $user->kategori = "Idiom";
        // $user->deskripsi = request('deskripsi');
        $user->save();

        return redirect('admin/idiom')->with('success','Data Berhasil Ditambahkan');
        // dd(request()->all());
    }

    public function show($id)
    {
        $data['kata'] = Kategori::select('*')->where('id',$id)->first();

        return view('admin.idiom.show',$data);
    }

    public function edit($id)
    {
        // $data['kata'] = Kata::select('*')->where('id',$id)->get();
        // $data['kata'] = $data['kata'][0];
        // $data['list_kata'] = DB::table('kata')->select('*')->where('id',$id)->get();
        // dd($data['list_kata']);
        $data['list_kategori'] = DB::table('kategori')->select('*')->where('id',$id)->first();
        // dd($data['list_kategori']);
        
        return view('admin.idiom.edit',$data);
    }

    public function update(Request $request)
    {
        // dd(request()->all());
        DB::table('kategori')->where('id', $request->id)->update([
                'nama_kategori'=>$request->nama_kategori,
            ]);
        return redirect('admin/idiom')->with('success','Data Berhasil Diubah');
    }

    public function destroy($kata)
    {
        $blog = Kategori::findOrFail($kata);
        $blog->delete();
        return redirect('admin/idiom')->with('danger','Data Berhasil Dihapus');
    }
}
