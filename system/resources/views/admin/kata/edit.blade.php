@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Edit Data kata
				</div>
				<div class="card-body">
					<form action="{{url('admin/kata/update', $kata->id)}}" method="post">
						@csrf
					<input type="hidden" name="id" value="{{$kata->id}}">
					<div class="form-group">
						<label for="" class="control-label">nama kata </label>
						<input type="text" name="nama_kata" class="form-control" value="{{$kata->nama_kata}}">
					</div>

					<button type="submit" class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection