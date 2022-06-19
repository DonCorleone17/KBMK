@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Data Kategori
					<a href="{{url('admin/idiom/create')}}" class="btn btn-dark float-right"><i class="fa fa-plus"></i> Tambah</a>
				</div>
				<div class="card-body">
					<table class="table table-datatable">
						<thead>
							<th>No</th>
							<th>Aksi</th>
							<th>Kategori</th>
						</thead>
						<tbody>
							@foreach($list_kategori as $d)
						 <tr>
							<td>{{$loop->iteration}}</td>
							<td>
								<div class="btn-group">
								<a href="{{url('admin/idiom', $d->id)}}" class="btn btn-dark float-right"><i class="fa fa-info"></i></a>
								<a href="{{url('admin/idiom', $d->id)}}/edit" class="btn btn-warning float-right"><i class="fa fa-edit"></i></a>
								@include('template.utils.delete', ['url' => url('admin/idiom', $d->id)])
								</div>
							</td>
							<td>{{$d->nama_kategori}}</td>
						 </tr>
						 	@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection