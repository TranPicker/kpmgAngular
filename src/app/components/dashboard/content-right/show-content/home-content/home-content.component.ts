import {Component, OnInit, OnChanges, AfterViewInit, ViewChild} from '@angular/core';
import {HomeService} from '../../../../../services/home/home.service';
import {SearchProfileService} from '../../../../../services/searchProfile/search-profile.service';
import {Subscription} from 'rxjs';
import {CurrentReportComponent} from '../current-report/current-report.component';

declare var $: any;
declare var setHeightElement: any;
declare var mapAction: any;
declare var drawChart: any;
declare var datas: any;
declare var clickItem: any;


@Component({
  selector: 'app-home-content',
  templateUrl: './home-content.component.html',
  styleUrls: ['./home-content.component.css']
})
export class HomeContentComponent implements OnInit, OnChanges, AfterViewInit {
  private allFunction: any;
  private subscription: Subscription;
  public functionsSearch: any = '';
  public title = 'Overview: Day';

  @ViewChild(CurrentReportComponent) currentReport;

  constructor(private homeService: HomeService, private searchProfileService: SearchProfileService) {
    this.getAllFunction();
  }

  ngOnInit() {
    mapAction();
    // search
    $('#multi-select').dropdown();
    drawChart();
    setHeightElement('#myTabContent');
    setHeightElement('#map');
    clickItem();
  }

  ngAfterViewInit() {
  }

  getAllFunction() {
    this.subscription = this.searchProfileService.getFunctions().subscribe(res => {
      this.allFunction = res.data;
      datas = this.allFunction;
    }, error1 => {
      console.log(error1);
    });
  }

  getFunctionSearch(data) {
    this.functionsSearch = data;
    drawChart(this.functionsSearch);
    this.currentReport.searchresult = this.functionsSearch;
    const arr = data.split(',');
    this.currentReport.searchOk = arr;
    this.currentReport.getAllCurrent();
    this.currentReport.getAllCustomers();
  }

  setTitleLive() {
    this.title = 'Overview: Day';
  }

  setTitleTimeZone() {
    this.homeService.getTimeZone().subscribe(res => {
      this.title = res.data;
    }, err => {
      console.log(err);
    });
  }


  ngOnChanges() {

  }
}
