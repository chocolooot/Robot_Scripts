@extends('products.layout')

@section('content')
	<div class="row">
		<div class="col-lg-12">
			<div class="pull-left">
				<h3>Agent Information</h3>
			</div>
			<div = class="pull-right">
				<a class="btn btn-success" href="{{  route('products.index'  )}}"> ←Back </a>
			</div>
		</div>
	</div>

	@if($errors->any())
		<div class="alert alert-danger">
			<strong>Error</strong>
			<ul>
				@foreach($errors->all() as $error)
					<li> {{ $error }} </li>
				@endforeach
			</ul>
		</div>
	@endif

	<form action="{{  route('products.update', $product->id)  }}" method="POST">
		@csrf
		@method("PUT")
		<div class="column">
			<div class="cold-lg-12">
				<div class="form-group">
					<strong>Name:</strong>
					<input type="text" name="name" value="{{ $product->name }}" class="form-control" placeholder="Name">
				</div>
			</div>

			<div class="cold-lg-12">
				<div class="form-group">
					<strong>Details:</strong>
					<textarea name="detail" placeholder="Detail" class="form-control">{{ $product->detail }}</textarea>
				</div>
			</div>

			<div class="cold-lg-12">
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>
@endsection