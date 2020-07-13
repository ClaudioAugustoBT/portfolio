import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', loadChildren: './home/home.module#HomePageModule' },
  { path: 'card/:inputs2', loadChildren: './card/card.module#CardPageModule' },
  { path: 'result/:inputs3', loadChildren: './result/result.module#ResultPageModule' },
  { path: 'start-page', loadChildren: './start-page/start-page.module#StartPagePageModule' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
