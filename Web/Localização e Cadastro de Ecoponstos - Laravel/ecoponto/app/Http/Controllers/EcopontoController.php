<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Eco2;

class EcopontoController extends Controller
{

    public function index()
    {
        $ecopontos = Eco2::all();
        
        return view('welcome', compact('ecopontos'));

        //return view('ecopontos.index', compact('ecopontos'));
    }

    // public function mapArray(){

    //     $eco = Eco2::all();
    //     $data1 = array();
    //     foreach($eco as $ec){
    //         array_push($data1,['rua teste', $ec->lat, $ec->log]);
    //     }
        
    //     return view('welcome', compact('data1'));
    // }

    public function create()
    {
        return view('ecopontos.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'lat'=> 'required',
            'log' => 'required',
            'desc' => 'required'
          ]);
          $ecoponto = new Eco2([
            'name' => $request->get('name'),
            'lat'=> $request->get('lat'),
            'log'=> $request->get('log'),
            'desc'=> $request->get('desc')
          ]);
          $ecoponto->save();
          return redirect('/ecopontos')->with('success', 'Stock has been added');
    }

    public function show($id)
    {
        //
    }

  
    public function edit($id)
    {
        $ecoponto = Eco2::find($id);

        return view('ecopontos.edit', compact('ecoponto'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>'required',
            'lat'=> 'required',
            'log' => 'required',
            'desc' => 'required'
          ]);
    
          $ecoponto = Eco2::find($id);

          $ecoponto->name = $request->get('name');
          $ecoponto->lat = $request->get('lat');
          $ecoponto->log = $request->get('log');
          $ecoponto->desc = $request->get('desc');

          $ecoponto->save();
    

          return redirect('/ecopontos')->with('success', 'Stock has been updated');
    }


    public function destroy($id)
    {
        $ecoponto = Eco2::find($id);
        $ecoponto->delete();
   
        return redirect('/ecopontos')->with('success', 'Stock has been deleted Successfully');
    }
}
