import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {Routes, RouterModule} from '@angular/router';
// import guard
import {AuthGuard} from './guard/auth.guard';
// import component use
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {LoginComponent} from './components/login/login.component';
import {HomeComponent} from './components/dashboard/pages/home/home.component';
import {StaffComponent} from './components/dashboard/pages/staff/staff.component';
import {FeedsComponent} from './components/dashboard/pages/feeds/feeds.component';
import {SettingComponent} from './components/dashboard/pages/setting/setting.component';


// configure routes
const routerConfig: Routes = [
  {path: '', redirectTo: 'h', pathMatch: 'full'},
  {path: 'login', component: LoginComponent},
  {
    path: 'h', component: DashboardComponent, canActivate: [AuthGuard], children: [
      {path: '', component: HomeComponent, pathMatch: 'full'},
      {path: 'dashboard', component: HomeComponent},
      {path: 'staff', component: StaffComponent},
      {path: 'feeds', component: FeedsComponent},
      {path: 'setting', component: SettingComponent},
      {path: '**', component: HomeComponent}
    ]
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
