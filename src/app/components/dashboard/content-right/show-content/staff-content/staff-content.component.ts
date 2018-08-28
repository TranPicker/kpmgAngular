import {Component, OnInit} from '@angular/core';
import './../../../../../../assets/js/dasboard.js';
import './../../../../../../assets/js/staff.js';

declare var $: any;
declare var setHeightElement: any;
declare var paginationTableContent: any;

@Component({
  selector: 'app-staff-content',
  templateUrl: './staff-content.component.html',
  styleUrls: ['./staff-content.component.css']
})
export class StaffContentComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {
    paginationTableContent();
    setHeightElement('#myTabContent');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
    });
    setHeightElement('#content-table');
    $(window).resize(function () {
      setHeightElement('#content-table');
    });
  }

}
