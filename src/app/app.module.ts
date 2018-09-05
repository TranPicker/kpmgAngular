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
import { DetailProfileComponent } from './components/dashboard/content-right/show-content/detail-profile/detail-profile.component';
import { HomeComponent } from './components/dashboard/pages/home/home.component';
import { ChatComponent } from './components/dashboard/content-right/show-content/chat/chat.component';
import { RulesComponent } from './components/dashboard/content-right/show-content/chat/rules/rules.component';
import { StaffComponent } from './components/dashboard/pages/staff/staff.component';
import { HomeContentComponent } from './components/dashboard/content-right/show-content/home-content/home-content.component';
import { StaffContentComponent } from './components/dashboard/content-right/show-content/staff-content/staff-content.component';
import { FeedsComponent } from './components/dashboard/pages/feeds/feeds.component';
import { FeedsContentComponent } from './components/dashboard/content-right/show-content/feeds-content/feeds-content.component';
import { SettingComponent } from './components/dashboard/pages/setting/setting.component';
import { SettingContentComponent } from './components/dashboard/content-right/show-content/setting-content/setting-content.component';

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
    OnePersonComponent,
    DetailProfileComponent,
    HomeComponent,
    ChatComponent,
    RulesComponent,
    StaffComponent,
    HomeContentComponent,
    StaffContentComponent,
    FeedsComponent,
    FeedsContentComponent,
    SettingComponent,
    SettingContentComponent
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
