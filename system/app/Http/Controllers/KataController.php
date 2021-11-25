<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kata;
use DB;

class KataController extends Controller
{
    public function index()
    {
        $data['list_kata'] = Kata::all();
        return view('admin.kata.index',$data);
    }

    public function create()
    {
        return view('admin.kata.create');
    }

    public function store(Request $request)
    {
        $user = new Kata;
        $user->nama_kata = request('nama_kata');
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
        $data['kata'] = Kata::select('*')->where('id',$id)->get();
        $data['kata'] = $data['kata'][0];
        
        return view('admin.kata.edit',$data);
    }

    public function update(Request $request)
    {
        DB::table('kata')->where('id', $request->id)->update([
                'nama_kata'=>$request->nama_kata
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
