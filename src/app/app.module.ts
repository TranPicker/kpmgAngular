import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {HttpClientModule} from '@angular/common/http';

import {FormsModule, ReactiveFormsModule} from '@angular/forms';
// Routing module
import { AppRoutingModule } from './/app-routing.module';
// Component
import { AppComponent } from './app.component';
import { NavbarLeftComponent } from './components/dashboard/navbar-left/navbar-left.component';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { LoginComponent } from './components/login/login.component';
import { ContentRightComponent } from './components/dashboard/content-right/content-right.component';
import { SearchProfileComponent } from './components/dashboard/content-right/search-profile/search-profile.component';
import { ShowContentComponent } from './components/dashboard/content-right/show-content/show-content.component';
import { CurrentReportComponent } from './components/dashboard/content-right/show-content/current-report/current-report.component';
import { OnePersonComponent } from './components/dashboard/content-right/show-content/one-person/one-person.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarLeftComponent,
    DashboardComponent,
    LoginComponent,
    ContentRightComponent,
    SearchProfileComponent,
    ShowContentComponent,
    CurrentReportComponent,
    OnePersonComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    CommonModule,
    HttpClientModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
