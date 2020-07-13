
@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="uper">
  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div><br />
  @endif
  <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>NOME</td>
          <td>LATITUDE</td>
          <td>LONGITUDE</td>
          <td>DESCRIÇÃO</td>
          <td colspan="2">Action</td>
        </tr>
    </thead>
    <tbody>
        @foreach($ecopontos as $ecoponto)
        <tr>
            <td>{{$ecoponto->id}}</td>
            <td>{{$ecoponto->name}}</td>
            <td>{{$ecoponto->lat}}</td>
            <td>{{$ecoponto->log}}</td>
            <td>{{$ecoponto->desc}}</td>
            <td><a href="{{ route('ecopontos.edit',$ecoponto->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('ecopontos.destroy', $ecoponto->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
  </table>
</div>
@endsection