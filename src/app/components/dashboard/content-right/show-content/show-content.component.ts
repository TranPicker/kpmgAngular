import {Component, OnInit} from '@angular/core';
import './../../../../../assets/js/index.js';

declare var $: any;
declare var EXPORT_WIDTH: any;
declare var CanvasJS: any;
declare var Highcharts: any;
declare var zoomin: any;
declare var zoomout: any;
declare var setHeightElement: any;
declare var zoomIn: any;


@Component({
  selector: 'app-show-content',
  templateUrl: './show-content.component.html',
  styleUrls: ['./show-content.component.css']
})
export class ShowContentComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {
    // load setHeigh
    // Dragable
    $('#map-office').draggable();
    $('.avatar-office').draggable();
    // click map office zoomin
    $('#map-office').click(function () {
      if (zoomIn) {
        zoomin();
      } else {
        zoomout();
      }
    });
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
      setHeightElement('#map');
    });
  }


}
