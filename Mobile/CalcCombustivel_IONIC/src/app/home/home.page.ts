import { Component } from '@angular/core';
import { toUnicode } from 'punycode';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],

})
export class HomePage {
  
  preco = {
    gasolina: '',
    etanol: ''
  };
  
  comp = {
    pgasolina: '',
    petanol: '',
    autoGas: '',
    autoEtanol: ''
  };

  logForm() {
    
    var gas = parseFloat(this.preco.gasolina);
    var etanol = parseFloat(this.preco.etanol);
    var resultado = (etanol / gas)* 100;

    if(this.preco.gasolina == "" || this.preco.etanol == ""){
      (<HTMLInputElement>document.getElementById("saida")).style.display = "none";
      (<HTMLInputElement>document.getElementById("erro")).innerText = "Erro - Inserir todos os dados";
      (<HTMLInputElement>document.getElementById("erro")).style.display = "block";
    }else{
      if(resultado>=70){
        //console.log("Suco de Dinossauro!");
        (<HTMLInputElement>document.getElementById("resultado")).innerText = "GASOLINA";
        (<HTMLInputElement>document.getElementById("saida")).style.display = "block";
        (<HTMLInputElement>document.getElementById("erro")).style.display = "none";
      }else{
        //console.log("51 Automotiva!");
        (<HTMLInputElement>document.getElementById("resultado")).innerText = "ETANOL";
        (<HTMLInputElement>document.getElementById("saida")).style.display = "block";
        (<HTMLInputElement>document.getElementById("erro")).style.display = "none";
      }
    }
    this.preco = {
      gasolina: '',
      etanol: ''
    };
  }

  logForm2() {
    
    var gas = parseFloat(this.comp.pgasolina);
    var etanol = parseFloat(this.comp.petanol);
    var autoGas = parseFloat(this.comp.autoGas);
    var autoEtanol = parseFloat(this.comp.autoEtanol);

    var resultado1 = autoGas/gas;
    var resultado2 = autoEtanol/etanol;
    

    if(this.comp.pgasolina == "" || this.comp.petanol == "" || this.comp.autoGas == "" || this.comp.autoEtanol == ""){
      (<HTMLInputElement>document.getElementById("erro2")).innerText = "Erro - Inserir todos os dados";
      (<HTMLInputElement>document.getElementById("erro2")).style.display = "block";
    }else{
      if(resultado1 >= resultado2){
        //console.log("Suco de Dinossauro!");
        (<HTMLInputElement>document.getElementById("resultado2")).innerText = "Gasolina";
        (<HTMLInputElement>document.getElementById("saida2")).style.display = "block";
        (<HTMLInputElement>document.getElementById("erro2")).style.display = "none";
      }else{
        //console.log("51 Automotiva!");
        (<HTMLInputElement>document.getElementById("resultado2")).innerText = "ETANOL";
        (<HTMLInputElement>document.getElementById("saida2")).style.display = "block";
        (<HTMLInputElement>document.getElementById("erro2")).style.display = "none";
      }
    }
    this.comp = {
      pgasolina: '',
      petanol: '',
      autoGas: '',
      autoEtanol: ''
    }; 
  }
}
