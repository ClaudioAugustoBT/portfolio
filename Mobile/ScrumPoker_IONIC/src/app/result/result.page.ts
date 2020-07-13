import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-result',
  templateUrl: './result.page.html',
  styleUrls: ['./result.page.scss'],
})
export class ResultPage implements OnInit {

  constructor(
    public activeRoute: ActivatedRoute,
    private router: Router
  ) 
  { 

  }

  inputs = [];

  ngOnInit() {
    let dataRec = this.activeRoute.snapshot.paramMap.get('inputs3');
    this.inputs = JSON.parse(dataRec);
    console.log(this.inputs);
    var l = this.inputs.length;

    console.log(this.inputs);

    for(var a = 0; a < l ; a++){
      var j;
      var c = this.inputs[a].card;
      if(c == 99){
        j = "Pausa"
      }else{
        if( c == 98){
          j = "Infinito"
        }else{
          j = c
        }
      }
      
      var temp = (this.inputs[a].value+': CARTA -> '+ j + '</br>'); 

      (<HTMLInputElement>document.getElementById("resultado")).innerHTML += temp;
    }
  }

  jogarD(){
    var inputs2 = JSON.stringify(this.inputs)
    this.router.navigate(['card', inputs2]);     
  }

}
