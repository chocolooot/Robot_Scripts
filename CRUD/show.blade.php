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

	<div class="column">
		<div class="cold-lg-12">
			<div class="form-group">
				<strong>Name:</strong>
				{{ $product->name }}
			</div>
		</div>

		<div class="cold-lg-12">
			<div class="form-group">
				<strong>Details:</strong>
				{{ $product->detail }}
			</div>
		</div>
	</div>
@endsection