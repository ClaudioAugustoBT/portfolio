import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  calc = {
    salarioBruto: '',
    sindical: '',
    saude: '',
    inss: '',
    ainss: '',
    irrf: '',
    amirrf: '',
    aairrf: '',
    fgts: '',
    familia: ''
  }

  logForm(){

    var salario = parseFloat(this.calc.salarioBruto);
    var sindical = parseFloat(this.calc.sindical);
    var saude = parseFloat(this.calc.saude);

    var fgts = salario * 0.08;
    this.calc.fgts = "R$ " + (fgts.toFixed(2)).toString();

    if(salario <= 907.77){
      this.calc.familia = "R$ " + (46.80).toString();
    }else if(salario <= 1364.43){
      this.calc.familia = "R$ " + (32.80).toString();
    }else{
      this.calc.familia = "R$ " + (0.00).toString();
    }

    if(salario <= 1751.81){
      this.calc.ainss = (8).toString() + " %";
      this.calc.inss = "R$ " + ((salario * 0.08).toFixed(2)).toString();
    }else if(salario <= 2919.72){
      this.calc.ainss = (9).toString() + " %";
      this.calc.inss = "R$ " + ((salario * 0.09).toFixed(2)).toString();
    }else if(salario <= 5839.45){
      this.calc.ainss = (11).toString() + " %";
      this.calc.inss = "R$ " + ((salario * 0.11).toFixed(2)).toString();
    }else{
      this.calc.ainss = "TETO";
      this.calc.inss = "R$ " + ((5839.45 * 0.11).toFixed(2)).toString();
    }

    if(salario <= 1903.98){
      this.calc.irrf = "R$ " + ((0.00).toFixed(2)).toString();
      this.calc.aairrf = ((0.00).toFixed(2)).toString() + " %";
      this.calc.amirrf = ((0.00).toFixed(2)).toString() + " %";
    }else if(salario <= 2826.65){
      this.calc.irrf = "R$ " + ((salario * 0.075).toFixed(2)).toString();
      this.calc.aairrf = ((7.5).toFixed(1)).toString() + " %";
      this.calc.amirrf = ((7.5).toFixed(1)).toString() + " %";
    }
    
  }

}
