import { Component, OnInit } from '@angular/core';
import './../../../../../../assets/js/dasboard.js';
import './../../../../../../assets/js/mychart.js';

declare var $: any;
declare var EXPORT_WIDTH: any;
declare var CanvasJS: any;
declare var Highcharts: any;
declare var setHeightElement: any;
declare var mapAction: any;



@Component({
  selector: 'app-home-content',
  templateUrl: './home-content.component.html',
  styleUrls: ['./home-content.component.css']
})
export class HomeContentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    mapAction();
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
      setHeightElement('#map');
    });
  }


}
