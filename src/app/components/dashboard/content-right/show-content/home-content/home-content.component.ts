import {Component, OnInit, OnChanges} from '@angular/core';
import './../../../../../../assets/js/dasboard.js';
import './../../../../../../assets/js/mychart.js';
import {HomeService} from '../../../../../services/home/home.service';
import {SearchProfileService} from '../../../../../services/searchProfile/search-profile.service';
import {Subscription} from 'rxjs';

declare var $: any;
declare var setHeightElement: any;
declare var mapAction: any;
declare var drawChart: any;
declare var setBackgroundProfileColor: any;
declare var actionSetBackGroundProfile: any;
declare var setBackgroundProfile: any;

@Component({
  selector: 'app-home-content',
  templateUrl: './home-content.component.html',
  styleUrls: ['./home-content.component.css']
})
export class HomeContentComponent implements OnInit, OnChanges {
  private allFunction: any;
  private subscription: Subscription;
  public functionsSearch: any = '';
  public title = 'Overview: Day';

  constructor(private homeService: HomeService, private searchProfileService: SearchProfileService) {
  }

  ngOnInit() {
    mapAction();
    // search
    $('#multi-select').dropdown();
    // click icon search

    actionSetBackGroundProfile(this.allFunction);
    drawChart();
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    // this.getDataChart2();
    this.getAllFunction();
  }

  getAllFunction() {
    this.subscription = this.searchProfileService.getFunctions().subscribe(res => {
      this.allFunction = res.data;
      actionSetBackGroundProfile(this.allFunction);
      setBackgroundProfileColor(this.allFunction);
    }, error1 => {
      console.log(error1);
    });
  }

  getFunctionSearch(data) {
    this.functionsSearch = data;
    console.log(this.functionsSearch);
  }

  setTitleLive() {
    this.title = 'Overview: Day';
  }

  setTitleTimeZone() {
    this.homeService.getTimeZone().subscribe(res => {
      console.log(res.data);
      this.title = res.data;
    }, err => {
      console.log(err);
    });
  }

  ngOnChanges() {

  }
}
