import { Component, OnInit } from '@angular/core';
import './../../../../../../assets/js/dasboard';
declare var $:any;
declare var setHeightElement: any;
@Component({
  selector: 'app-feeds-content',
  templateUrl: './feeds-content.component.html',
  styleUrls: ['./feeds-content.component.css']
})
export class FeedsContentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    setHeightElement('#myTabContent');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
    });
  }

}
