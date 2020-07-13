import { Component, OnInit, NgModule } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-start-page',
  templateUrl: './start-page.page.html',
  styleUrls: ['./start-page.page.scss'],
})

export class StartPagePage implements OnInit {
  
  ngOnInit() {
  }

  constructor(
    private router: Router
  ){
    this.inputs = [];
  }
 
  inputs: Array<{title: string, type: string, value: string, name: string, id:string, card: number }>;

    
  i:number = 0;
  adicionarCampo() {
  this.i++;
  this.inputs.push({ title: "Jogador "+this.i+":", type: "text", value: "", name: "play"+this.i, id:"play"+this.i, card:  0 });
  }

  
  qt = {
    players: '',
  }
  
  logForm(){

    var qtp = parseInt(this.qt.players);

    if(qtp < 1 || this.qt.players == '' ){

      console.log("Valor invalido")
      
    }else{

      for(var i = 0;i < qtp; i++){
        this.adicionarCampo();
      }
  
      (<HTMLFormElement>document.getElementById("startForm")).style.display = "none";
      (<HTMLButtonElement>document.getElementById("btnJogar")).style.display = "block";
  
    }
  }


  jogar(){

    var p = this.inputs.length;
    var a = 1

    for(var i = 0; i < p; i++){
      this.inputs[i].value = (<HTMLInputElement>document.getElementById("play"+a)).value;
      a++;
    }
    console.log(this.inputs);
    var inputs2 = JSON.stringify(this.inputs)
    this.router.navigate(['card', inputs2]);
    
  }

}

