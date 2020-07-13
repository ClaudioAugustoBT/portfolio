@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    Add Ecoponto
  </div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('ecopontos.store') }}">
          <div class="form-group">
              @csrf
              <label for="name">Name:</label>
              <input type="text" class="form-control" name="name"/>
          </div>
          <div class="form-group">
              <label for="price">Latitude :</label>
              <input type="text" class="form-control" name="lat"/>
          </div>
          <div class="form-group">
              <label for="quantity">Longitude: </label>
              <input type="text" class="form-control" name="log"/>
          </div>
          <div class="form-group">
              <label for="quantity">Descrição: </label>
              <input type="text" class="form-control" name="desc"/>
          </div>
          <button type="submit" class="btn btn-primary">Add</button>
      </form>
  </div>
</div>
@endsection