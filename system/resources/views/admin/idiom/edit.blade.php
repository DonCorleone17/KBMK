@extends('template.base')
@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Edit Data Idiom
				</div>
				<div class="card-body">
					<form action="{{url('admin/idiom/update', $list_kategori->id)}}" method="post">
						@csrf
					<input type="hidden" name="id" value="{{$list_kategori->id}}">
					<div class="form-group">
						<label for="" class="control-label">Idiom</label>
						<input type="text" name="nama_kategori" class="form-control" value="{{$list_kategori->nama_kategori}}">
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