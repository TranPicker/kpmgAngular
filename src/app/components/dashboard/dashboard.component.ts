import {Component, OnInit} from '@angular/core';

declare var $: any;
declare var EXPORT_WIDTH: any;
declare var CanvasJS: any;
declare var Highcharts: any;

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
  constructor() {
    console.log(localStorage.getItem('currentUser'));
  }

  ngOnInit() {
  }

  logOut() {
    console.log('logout working');
    if (localStorage.getItem('currentUser')) {
      localStorage.removeItem('currentUser');
    }
  }
}
