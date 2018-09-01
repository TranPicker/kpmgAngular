import {Component, OnInit, Input, OnChanges, OnDestroy} from '@angular/core';
import {CurrentReportService} from '../../../../../services/report/current-report.service';
import {Subscription} from 'rxjs';
import {DetailPersonService} from '../../../../../services/detailPerson/detail-person.service';


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
  private infor: any = '';
  private logs: any = '';
  private searchOk: any = '';

  constructor(private currentReportService: CurrentReportService, private detailPersonService: DetailPersonService) {
  }

  ngOnInit() {
    this.getAllCurrent([]);
  }

  ngOnChanges() {
  }

  getAllCurrent(data?) {
    this.currentReportService.getAllCurrentReport(data).subscribe(res => {
      this.currentTotal = res.data;
      this.functions = res.data.functions;
    }, err => {
      console.log(err);
    });
  }

  getAllCustomers() {
    if (!this.searchOk) {
      this.searchOk = [];
    }
    this.getAllCurrent(this.searchOk);
    this.subscription = this.currentReportService.getAllCustomer(this.searchOk).subscribe(res => {
      this.allCustomer = res.data;
      console.log(this.allCustomer);
    }, err => {
      console.log(err);
    });

  }

  getInforPerson(id) {
    this.getLogPerson(95);
    this.detailPersonService.getInfomation(95).subscribe(res => {
      this.infor = res.data;
      console.log(this.infor);
    }, err => {
      console.log(err);
    });
  }

  getLogPerson(id) {
    this.detailPersonService.getLog(95).subscribe(res => {
      this.logs = res;
    }, error => {
      console.log(error);
    });
  }

  ngOnDestroy() {
  }

  getOneFunction(title) {
  }

}
