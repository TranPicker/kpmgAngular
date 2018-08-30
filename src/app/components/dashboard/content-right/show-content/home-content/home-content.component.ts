import {Component, OnInit} from '@angular/core';
import './../../../../../../assets/js/dasboard.js';
import './../../../../../../assets/js/mychart.js';
import {HomeService} from '../../../../../services/home/home.service';

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

  constructor(private homeService: HomeService) {
  }

  ngOnInit() {
  drawChart();
    mapAction();
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
      setHeightElement('#map');
    });
    // this.getDataChart2();
  }

  // getDataChart2() {
  //   this.homeService.getDataChart().subscribe(res => {
  //     drawChart(res);
  //   }, err => {
  //     console.log(err);
  //   });
  // }
}
