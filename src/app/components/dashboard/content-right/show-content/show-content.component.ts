import {Component, OnInit} from '@angular/core';
import './../../../../../assets/js/index.js';
import './../../../../../assets/js/mychart.js';

declare var $: any;
declare var EXPORT_WIDTH: any;
declare var CanvasJS: any;
declare var Highcharts: any;
declare var setHeightElement: any;
declare var mapAction: any;


@Component({
  selector: 'app-show-content',
  templateUrl: './show-content.component.html',
  styleUrls: ['./show-content.component.css']
})
export class ShowContentComponent implements OnInit {

  constructor() {
  }

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
