import { Component, OnInit } from '@angular/core';
import './../../../../../../assets/js/dasboard.js';
import './../../../../../../assets/js/mychart.js';

declare var $: any;
declare var setHeightElement: any;
declare var mapAction: any;
declare var drawChart: any;



@Component({
  selector: 'app-home-content',
  templateUrl: './home-content.component.html',
  styleUrls: ['./home-content.component.css']
})
export class HomeContentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    drawChart();
    mapAction();
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
      setHeightElement('#map');
    });
  }


}
