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
					<div class="form-group">
						<label for="" class="control-label">Kategori Kata</label>
						<select class="form-control" name="id_kategori">
							<option value="{{$kata->id_kategori}}">--{{$kata->nama_kategori}}--</option>
							@foreach($list_kategori as $d)
							<option value="{{$d->id}}">{{$d->nama_kategori}}</option>
							@endforeach
						</select>	
					</div>

					<div class="form-group">
						<label for="" class="control-label">deskripsi</label>
						<textarea class="form-control"  name="deskripsi" style="height: 120px">{{$kata->deskripsi}}</textarea>	
					</div>

					<button type="submit" class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

<!-- @push('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
@endpush

@push('script')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
	$(document).ready(function() {
		  $('#deskripsi').summernote();
		});
	</script>
@endpush -->