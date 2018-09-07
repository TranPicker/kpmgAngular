import {Component, OnInit, OnDestroy} from '@angular/core';
import './../../../../../../assets/js/staff.js';
import {Staff} from '../../../../../models/staff/staff';
import {Subject, Subscription} from 'rxjs';
import {StaffService} from '../../../../../services/staff/staff.service';
import {SearchProfileService} from '../../../../../services/searchProfile/search-profile.service';
import {DetailPersonService} from '../../../../../services/detailPerson/detail-person.service';

declare var paginationTableContent: any;
declare var datas: any;
declare var $: any;
declare var setHeightElement: any;

@Component({
  selector: 'app-staff-content',
  templateUrl: './staff-content.component.html',
  styleUrls: ['./staff-content.component.css']
})
export class StaffContentComponent implements OnInit, OnDestroy {
  public allFunction: any;
  public listCustomer: Staff[] = [];
  public subscription: Subscription;
  public functionsSearch: any = [];
  public title = 'Staff Management';
  public infor: any = '';
  public logs: any = '';
  // Datatables
  dtOptions: DataTables.Settings = {};
  dtTrigger: Subject<any> = new Subject<any>();

  constructor(public staffService: StaffService, public searchProfileService: SearchProfileService, public detailPersonService: DetailPersonService) {
  }

  ngOnInit() {
    // search
    $('#multi-select').dropdown();
    paginationTableContent();
    setHeightElement('#overview');
    this.dtOptions = {
      pagingType: 'full_numbers'
    };
    // get data
    this.getAllCustomer();
    this.getAllFunction();
  }

  getInforPersonStaff(id) {
    this.detailPersonService.getInfomation(id).subscribe(res => {
      this.infor = res.data;
    }, err => {
      console.log(err);
    });
  }

  getLogPersonStaff(id) {
    this.detailPersonService.getLog(id).subscribe(res => {
      this.logs = res;
    }, error => {
      console.log(error);
    });
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
    let arr = data.split(',');
    if (!data) {
      arr = [];
    }
    this.functionsSearch = arr;
    this.getAllCustomer();
  }

  getAllCustomer() {
    this.subscription = this.staffService.getAllCustomer(this.functionsSearch).subscribe(res => {
      this.listCustomer = res.data;
      this.dtTrigger.next();
    }, error1 => {
      console.log('Loi nhe');
    });
  }


  ngOnDestroy() {
    this.dtTrigger.unsubscribe();
    this.subscription.unsubscribe();
  }

}
