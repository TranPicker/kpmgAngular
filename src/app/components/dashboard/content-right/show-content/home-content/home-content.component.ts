import {Component, OnInit, OnChanges, AfterViewInit, ViewChild} from '@angular/core';
import {HomeService} from '../../../../../services/home/home.service';
import {SearchProfileService} from '../../../../../services/searchProfile/search-profile.service';
import {CurrentReportService} from '../../../../../services/report/current-report.service';
import {Subscription} from 'rxjs';
import {CurrentReportComponent} from '../current-report/current-report.component';
import {DetailPersonService} from '../../../../../services/detailPerson/detail-person.service';
import {fabric} from 'fabric';
import {logDeprecation} from 'sweetalert/typings/modules/options/deprecations';

declare var $: any;
declare var setHeightElement: any;
declare var mapAction: any;
declare var drawChart: any;
declare var datas: any;
declare var clickItem: any;
declare var openNav: any;
declare var closeNav: any;

@Component({
  selector: 'app-home-content',
  templateUrl: './home-content.component.html',
  styleUrls: ['./home-content.component.css']
})
export class HomeContentComponent implements OnInit, OnChanges, AfterViewInit {
  public allFunction: any;
  public subscription: Subscription;
  public functionsSearch: any = '';
  public title = 'Overview: Day';
  public infor: any = '';
  public logs: any = '';
  public customersArr: any = [];
  canvas: any;

  @ViewChild(CurrentReportComponent) currentReport;

  constructor(public homeService: HomeService,
              public searchProfileService: SearchProfileService,
              public currentService: CurrentReportService,
              public detailPersonService: DetailPersonService) {
    this.getAllFunction();
  }

  ngOnInit() {

    this.getPersonsOnMap([]);
    // Draw images canvas
    this.canvas = new fabric.Canvas('myCanvas');
    this.canvas.renderAll();
    // End Draw background images canvas

    mapAction();
    // search
    $('#multi-select').dropdown();
    drawChart();

    clickItem();
    this.getAllCustomerHome([]);
  }

  // Draw background images
  setBackgroundImage() {
    console.log(this.customersArr);
    const imageUrl = './../../../../../../assets/images/5x.jpg';
    const that = this;
    fabric.Image.fromURL(imageUrl, function (img) {
      that.canvas.setBackgroundImage(img, that.canvas.renderAll.bind(that.canvas), {
        scaleX: that.canvas.width / img.width,
        scaleY: that.canvas.height / img.height
      });
    });
    const radius = 300;
    this.customersArr.forEach(function (item, i) {
      fabric.util.loadImage(item.file, function (img) {
        const legimg = new fabric.Image(img, {
          id: item.id,
          left: item.left,
          top: item.top,
          scaleX: 40 / img.width,
          scaleY: 40 / img.height,
          hasControls: false,
          stroke: item.color, strokeWidth: 20,
          fill: 'rgba(0,0,200,0.5)',
          // clipTo: function (ctx) {
          //   ctx.arc(0, 0, radius, 0, Math.PI * 2, true);
          // }
        });

        legimg.set({
          id: item.id,
          person_id: item.person_id,
        })
        ;
        that.canvas.add(legimg);
        that.canvas.renderAll();
      });
    });

    that.canvas.on('mouse:down', function (options) {
      if (options.target) {
        console.log(options.target.id);
        console.log(options.target.person_id);
        that.getInforPerson(options.target.id);
        that.getLogPerson(options.target.person_id);
        openNav('#member-detail');
        closeNav('#list-profile');
      }
    });
  }

  // Delete canvas
  removeAll() {
    this.canvas.remove(...this.canvas.getObjects());
  }
  // End draw background images

  getPersonsOnMap(data) {
    this.homeService.getCurrentPersonOnMap(data).subscribe(res => {
      this.customersArr = res.data;
      this.setBackgroundImage();
    }, err => {
      console.log(err);
    });
  }

  getInforPerson(id) {
    this.detailPersonService.getInfomation(id).subscribe(res => {
      this.infor = res.data;
    }, err => {
      console.log(err);
    });
  }

  getLogPerson(person_id) {
    this.detailPersonService.getLog(person_id).subscribe(res => {
      console.log(res);
      this.logs = res;
    }, error => {
      console.log(error);
    });
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
    let arr = data.split(',');
    if (!data) {
      arr = [];
    }
    this.currentReport.searchOk = arr;
    this.currentReport.getAllCurrent();
    this.currentReport.getAllCustomers();
    this.getAllCustomerHome(arr);
    this.getPersonsOnMap(arr);
    this.removeAll();
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

  getAllCustomerHome(data) {
    this.currentService.getAllCustomer(data).subscribe(res => {
      console.log(res.data);
    });
  }

  ngOnChanges() {
  }
}
