@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data Kata
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<h3>{{$kata->nama_kata}}</h3>
							<hr>
							<p>Pelafalan : <br>{!!nl2br($kata->pelafalan)!!}  
							<p>Audio : <br>{!!nl2br($kata->audio)!!}  
							<p>Deskripsi : <br>{!!nl2br($kata->deskripsi)!!}  
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