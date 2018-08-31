import {Component, OnInit, OnDestroy} from '@angular/core';
import './../../../../../../assets/js/staff.js';
import {Staff} from '../../../../../models/staff/staff';
import {Subscription} from 'rxjs';
import {StaffService} from '../../../../../services/staff/staff.service';

declare var paginationTableContent: any;

@Component({
  selector: 'app-staff-content',
  templateUrl: './staff-content.component.html',
  styleUrls: ['./staff-content.component.css']
})
export class StaffContentComponent implements OnInit, OnDestroy {
  private listCustomer: Staff[];
  private subscription: Subscription;

  constructor(private staffService: StaffService) {
  }

  ngOnInit() {
    paginationTableContent();

    // get data
    this.getAllCustomer();
  }

  getAllCustomer() {
    this.subscription = this.staffService.getAllCustomer().subscribe(res => {
      this.listCustomer = res.data;
      console.log(this.listCustomer);
    }, error1 => {
      console.log('Loi nhe');
    });
  }

  ngOnDestroy() {
    this.subscription.unsubscribe();
  }

}
