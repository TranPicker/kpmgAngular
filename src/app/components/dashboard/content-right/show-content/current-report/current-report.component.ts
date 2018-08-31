import {Component, OnInit, Input, OnChanges, OnDestroy} from '@angular/core';
import {CurrentReportService} from '../../../../../services/report/current-report.service';
import {Subscription} from 'rxjs';

declare var setColorProfile: any;

@Component({
  selector: 'app-current-report',
  templateUrl: './current-report.component.html',
  styleUrls: ['./current-report.component.css']
})
export class CurrentReportComponent implements OnInit, OnChanges, OnDestroy {
  private currentTotal: any = '';
  private allCustomer: any = '';
  private functions: any = '';
  private subscription: Subscription;

  constructor(private currentReportService: CurrentReportService) {
  }

  @Input('searchResult') searchResult: any = '';

  ngOnInit() {
    // this.getAllCurrent();
  }

  ngOnChanges() {
  }

  getAllCurrent() {
    this.currentReportService.getAllCurrentReport().subscribe(res => {
      this.currentTotal = res.data;
      this.functions = res.data.functions;
    }, err => {
      console.log(err);
    });
  }

  getAllCustomers() {
    this.subscription = this.currentReportService.getAllCustomer().subscribe(res => {
      this.allCustomer = res.data;
      console.log(this.allCustomer);
    }, err => {
      console.log(err);
    });

  }

  ngOnDestroy() {
  }

  getOneFunction(title) {
  }

}
