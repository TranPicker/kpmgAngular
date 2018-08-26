import { Component, OnInit } from '@angular/core';
import './../../../../../../assets/js/index.js';
declare var setColorProfile: any;
@Component({
  selector: 'app-current-report',
  templateUrl: './current-report.component.html',
  styleUrls: ['./current-report.component.css']
})
export class CurrentReportComponent implements OnInit {
  constructor() { }

  ngOnInit() {
    // set icon color profile
    setColorProfile('.ico-profile', 'color');
    // set border list profile
    setColorProfile('.border-profile', 'border-color');
  }

}
