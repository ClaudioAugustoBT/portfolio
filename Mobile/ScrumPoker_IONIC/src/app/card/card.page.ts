import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AlertController } from '@ionic/angular';
import { ActionSheetController } from '@ionic/angular';
import { Router } from '@angular/router';

@Component({
  selector: 'app-card',
  templateUrl: './card.page.html',
  styleUrls: ['./card.page.scss'],
})

export class CardPage implements OnInit {

  constructor(
    private actionSheet: ActionSheetController,
    public alertController: AlertController,
    public activeRoute: ActivatedRoute,
    private router: Router
  ){ 
   
  }

  ngOnInit() {
    let dataRec = this.activeRoute.snapshot.paramMap.get('inputs2');
    this.inputs = JSON.parse(dataRec);
    (<HTMLInputElement>document.getElementById("jogador")).innerHTML = this.inputs[0].value;
    
  }

  inputs = [];
  
  async presentAlertConfirm(c) {
    var j;
    if(c == 99){
      j = "Pausa"
    }else{
      if( c == 98){
        j = "Infinito"
      }else{
        j = c
      }
    }
    

    const alert = await this.alertController.create({
      header: 'CONFIRMAR CARTA SELECIONADA',
      subHeader: '',
      message: this.inputs[this.jogada].value + ', você escolheu a carta: <strong>'+j+'</strong>.',
      buttons: [
        {
          text: 'TROCAR',
          role: 'cancel',
          cssClass: 'secondary',
          handler: () => {
            console.log(this.inputs[1].card)
            console.log('Cancel');
          }
        }, {
          text: 'CONFIRMAR',
          handler: () => {
            this.card(c);
            console.log(this.jogada);
            this.jogada = this.jogada+1;
            if(this.jogada < (this.inputs.length)){
              this.jogador();
              console.log(this.inputs);
            }else{
              this.gotoResult();
            }
            console.log('Confirm Okay');
          }
        }
      ]
    });
    await alert.present();
  }  

  jogada = 0;
  
  jogador(){
    (<HTMLInputElement>document.getElementById("jogador")).innerHTML = this.inputs[this.jogada].value;
  }

  card(c){
    this.inputs[this.jogada].card = c;
    //console.log(this.inputs[this.jogada]);
  }

  teste(){
    console.log(this.inputs);
  }

  gotoResult(){
    var inputs3 = JSON.stringify(this.inputs)
    this.router.navigate(['result', inputs3]);
  }
  

}
