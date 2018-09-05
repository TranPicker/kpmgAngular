import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class CurrentReportService {
  private ip: any = '';
  private urlGetAllCurrent = '/api/statitic/dashboard';
  private urlGetAll = '/api/statitic/dashboard_current';
  private urlGetId = '';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetAllCurrent = this.ip + this.urlGetAllCurrent;
    this.urlGetAll = this.ip + this.urlGetAll;
  }

  getAllCurrentReport(data): Observable<any> {
    return this.http.post<any>(this.urlGetAllCurrent, {
      'function': data
    });
  }

  getAllCustomer(data): Observable<any> {
    return this.http.post<any>(this.urlGetAll, {
        'function': data
      }
    );
  }

  getWithId(): Observable<any> {
    return this.http.get<any>(this.urlGetId);
  }
}
