import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {Routes, RouterModule} from '@angular/router';

// import component use
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {LoginComponent} from './components/login/login.component';


// configure routes
const routerConfig: Routes = [
  {path: '', redirectTo: 'dashboard', pathMatch: 'full'},
  {path: 'login', component: LoginComponent},
  {
    path: 'dashboard', component: DashboardComponent
  },
  {path: '**', component: DashboardComponent}
];

@NgModule({
  imports: [
    RouterModule.forRoot(routerConfig)
  ],
  declarations: [],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
