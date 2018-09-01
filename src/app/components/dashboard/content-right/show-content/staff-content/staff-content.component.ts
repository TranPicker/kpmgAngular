import {Component, OnInit, OnDestroy} from '@angular/core';
import './../../../../../../assets/js/staff.js';
import {Staff} from '../../../../../models/staff/staff';
import {Subscription} from 'rxjs';
import {StaffService} from '../../../../../services/staff/staff.service';
import {SearchProfileService} from '../../../../../services/searchProfile/search-profile.service';

declare var paginationTableContent: any;
declare var datas: any;
declare var $: any;

@Component({
  selector: 'app-staff-content',
  templateUrl: './staff-content.component.html',
  styleUrls: ['./staff-content.component.css']
})
export class StaffContentComponent implements OnInit, OnDestroy {
  private allFunction: any;
  private listCustomer: Staff[] = [];
  private subscription: Subscription;
  private functionsSearch: any = '';
  private title = 'Staff Management';

  constructor(private staffService: StaffService, private searchProfileService: SearchProfileService) {
  }

  ngOnInit() {
    // search
    $('#multi-select').dropdown();
    paginationTableContent();

    // get data
    this.getAllCustomer();
    this.getAllFunction();
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
    console.log(data);
    data = data.replace(' ', '');
    this.functionsSearch = data;
    this.getAllCustomer();
  }

  getAllCustomer() {
    this.subscription = this.staffService.getAllCustomer(this.functionsSearch).subscribe(res => {
      this.listCustomer = res.data;
    }, error1 => {
      console.log('Loi nhe');
    });
  }


  ngOnDestroy() {
    this.subscription.unsubscribe();
  }

}
