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
  public currentTotal: any = '';
  public allCustomer: any = '';
  public functions: any = '';
  public subscription: Subscription;
  public infor: any = '';
  public logs: any = '';
  public searchOk: any = '';

  constructor(public currentReportService: CurrentReportService, public detailPersonService: DetailPersonService) {
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

  getInforPerson(id, person_id) {
    this.getLogPerson(person_id);
    this.detailPersonService.getInfomation(id).subscribe(res => {
      this.infor = res.data;
      console.log(this.infor);
    }, err => {
      console.log(err);
    });
  }

  getLogPerson(id) {
    this.detailPersonService.getLog(id).subscribe(res => {
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
