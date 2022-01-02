<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kata;
use DB;

class IdiomApiController extends Controller
{
    public function index()
    {
        // $data['list_kata'] = Kata::where('kategori','idiom')->get();
        // $data['list_kategori'] = DB::table('kategori')->select('*')->orderBy('nama_kategori')->get();
        $idiom = DB::table('kata')
        ->select('kategori.nama_kategori','kata.id', 'kata.nama_kata', 'kata.deskripsi')
        ->join('kategori','kategori.id','kata.id_kategori')
        ->where('kategori.id','2')
        ->orderBy('nama_kata') 
        ->get();
        // dd($kata);
        return response()->json(['message' => 'success', 'idiom' => $idiom]);
    }

    public function create()
    {
        return view('admin.idiom.create');
    }

    public function store(Request $request)
    {
        $user = new Kata;
        $user->nama_kata = request('nama_kata');
        $user->kategori = "Idiom";
        $user->deskripsi = request('deskripsi');
        $user->save();

        return redirect('admin/idiom')->with('success','Data Berhasil Ditambahkan');
        // dd(request()->all());
    }

    public function show($id)
    {
        $data['kata'] = Kata::select('*')->where('id',$id)->get();
        $data['kata'] = $data['kata'][0];

        return response()->json(['message' => 'success', 'data' => $data]);
    }

    public function edit($id)
    {
        $data['kata'] = Kata::select('*')->where('id',$id)->get();
        $data['kata'] = $data['kata'][0];
        
        return response()->json(['message' => 'success', 'data' => $data]);
    }

    public function update(Request $request)
    {
        DB::table('kata')->where('id', $request->id)->update([
                'nama_kata'=>$request->nama_kata,
                'kategori'=>$request->kategori,
                'deskripsi'=>$request->deskripsi
            ]);
        return redirect('admin/idiom')->with('success','Data Berhasil Diubah');
    }

    public function destroy($kata)
    {
        $blog = Kata::findOrFail($kata);
        $blog->delete();
        return redirect('admin/idiom')->with('danger','Data Berhasil Dihapus');
    }
}
