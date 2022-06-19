@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Kategori
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<h3>{{$kata->nama_kategori}}</h3>
							<hr>
							<p>deskripsi : <br>{!!nl2br($kata->nama_kategori)!!}  
								<!-- Email : {{$kata->nama_kata}}
							</p>
							<p>
								Level : {{$kata->nama_kata}}
							</p> -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection