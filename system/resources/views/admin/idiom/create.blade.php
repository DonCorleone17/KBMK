@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Kategori
				</div>
				<div class="card-body">
					<form action="{{url('admin/idiom')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">Kategori</label>
						<input type="text" name="nama_kategori" class="form-control">
					</div>
					<!-- <div class="form-group">
						<label for="" class="control-label">Kategori</label>
						<select class="form-control" name="kategori" required="">
							<option hidden="" value="">-- Kategori--</option>
							<option value="Kata">Kata</option>
							<option value="Idiom">Idiom</option>
						</select>	
					</div> -->
						<!-- <div class="form-group">
							<label class="label">Deskripsi</label>
							<textarea class="form-control"  name="deskripsi" style="height: 120px"></textarea>	
						</div> -->

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