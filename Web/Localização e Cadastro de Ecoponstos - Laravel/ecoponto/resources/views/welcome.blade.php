<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>ECOPONTO</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link href="{{ asset('/sass/bootstrap.css') }}" rel="stylesheet">
        <style>

            #map {
                height: 80%;
                width: 100%;
                border-top: 5px solid rgba(206,206,206,0.8);        
                border-bottom: 5px solid rgba(206,206,206,0.8);
            }

            html, body {
                background: linear-gradient(to right top, #505050, #000);
                height: 100%;
                margin: 0;
                padding: 0;
                font-family: 'Nunito', sans-serif;
                color: #fff;
                font-weight: 400;
            }

            .info_content {
                color: black;
            }
            .uper {
                margin-top: 40px;
            }   
        </style>
    </head>
    <body>

        <center>

        <div style="padding-top: 2rem; padding-bottom: 2rem; font-size: 46px;">
            Ecopontos - BS
        </div>

        </center>
        <center>
            <a href="{{ route('ecopontos.create')}}" class="btn btn-primary">Adicionar ECOPONTO</a> 
        </center>        
        

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
                @foreach($ecopontos ?? '' as $ecoponto)
                <tr>
                    <td>{{$ecoponto->id}}</td>
                    <td>{{$ecoponto->name}}</td>
                    <td>{{$ecoponto->lat}}</td>
                    <td>{{$ecoponto->log}}</td>
                    <td>{{$ecoponto->desc}}</td>
                    <td><a href="{{ route('ecopontos.edit',$ecoponto->id)}}" class="btn btn-warning">Edit</a></td>
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
        
        <div id="map"></div>
        <script>
            var arr = {!! json_encode($ecopontos->toArray()) !!};
    
            console.log(arr);
        </script>

        <script>

            var arr2 = {!! json_encode($ecopontos->toArray()) !!}; 
            
            var len = arr2.length;

            var mk = [];
            for(var a = 0; a < len ; a++){
                mk.push(['rua teste ' + a ,parseFloat(arr2[a].lat),parseFloat(arr2[a].log)]);  
            };

            var info = [];
            for(var b = 0; b < len ; b++){
                info.push(['<div class="info_content"> <h3>' + arr2[b].name + '</h3> <p>' + arr2[b].desc + '</p>']);
            };

            function initMap() {
                var map;
                var bounds = new google.maps.LatLngBounds();
                var mapOptions = {
                    mapTypeId: 'roadmap'
                };
                                
                // Display a map on the web page
                map = new google.maps.Map(document.getElementById("map"), mapOptions);
                map.setTilt(50);

                                    
                // Multiple markers location, latitude, and longitude
                
                var markers = this.mk.slice(); //[
                    //['rua teste',parseFloat(this.arr2[0].lat),parseFloat(this.arr2[0].log)] 
                    // ['Rua José Alvez Maciel com Rua Jorge Hagge, SP', -24.012947, -46.439334]
                    // ['R. Dorivaldo Francisco Loria, SP', -24.031945, -46.507219]
                //];
                
                
                
                
                // Info window content
                var infoWindowContent = this.info.slice(); // [
                
                    //['<div class="info_content"> <h3>' + this.arr2[0].name + '</h3> <p>'+ this.arr2[0].desc + '</p>']
                    //  ['<div class="info_content">' +
                    //  '<h3>Ecoponto - Aviação</h3>' +
                    //  '<p>Teste teste tes te</p>' + '</div>']
                    // ['<div class="info_content">' +
                    // '<h3>Ecoponto - Maracanã</h3>' +
                    // '<p>Teste teste teste teste</p>' +
                    // '</div>']
                //];
               
                    
                 // Add multiple markers to map
                 var infoWindow = new google.maps.InfoWindow(), marker, i;
                    
                    // Place each marker on the map  
                    for( i = 0; i < markers.length; i++ ) {
                        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
                        bounds.extend(position);
                        marker = new google.maps.Marker({
                            position: position,
                            map: map,
                            title: markers[i][0]
                        });
                        
                        // Add info window to marker    
                        google.maps.event.addListener(marker, 'click', (function(marker, i) {
                            return function() {
                                infoWindow.setContent(infoWindowContent[i][0]);
                                infoWindow.open(map, marker);
                            }
                        })(marker, i));

                        // Center the map to fit all markers on the screen
                        map.fitBounds(bounds);
                    }

                    // Set zoom level
                    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
                        this.setZoom(14);
                        google.maps.event.removeListener(boundsListener);
                    });
                }
        </script>
                
    
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCzY2KAgA392i4TYG-RjWdpU9N2U0xlX08&callback=initMap">
        </script>
        <script type="text/javascript" src="{{ asset('/js/jquery-3.3.1.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/js/popper.min.js') }}"></script>
    </body>
</html>
