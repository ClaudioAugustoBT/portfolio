@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    Edit Ecopontos
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
      <form method="post" action="{{ route('ecopontos.update', $ecoponto->id) }}">
        @method('PATCH')
        @csrf
        <div class="form-group">
          <label for="name">ECOPONTTO:</label>
          <input type="text" class="form-control" name="name" value={{ $ecoponto->name }} />
        </div>
        <div class="form-group">
          <label for="price">Latitude:</label>
          <input type="text" class="form-control" name="lat" value={{ $ecoponto->lat }} />
        </div>
        <div class="form-group">
          <label for="quantity">Longitude:</label>
          <input type="text" class="form-control" name="log" value={{ $ecoponto->log }} />
        </div>
        <div class="form-group">
          <label for="quantity">Descricção:</label>
          <input type="text" class="form-control" name="desc" value={{ $ecoponto->desc }} />
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
      </form>
  </div>
</div>
@endsection