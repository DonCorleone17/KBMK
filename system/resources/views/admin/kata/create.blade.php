@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Data Kata
				</div>
				<div class="card-body">
					<form action="{{url('admin/kata')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">Nama Kata</label>
						<input type="text" name="nama_kata" class="form-control">
					</div>

					<button type="submit" class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection