import { Component, OnInit, NgModule } from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  ngOnInit() {
    
    this.temp();
    
  }

  constructor(private router: Router){}

  startClick(){
    this.temp();
    this.router.navigate(['/start-page']);
  }  

  temp(){
    setTimeout(() => {
      (<HTMLImageElement>document.getElementById("img1")).style.display= "none";
      (<HTMLIonButtonElement>document.getElementById("btnstart")).style.display= "block";
      (<HTMLImageElement>document.getElementById("img2")).style.display= "block";
      console.log("TIMER");
    }, 3000);
  }
}

