import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class DetailPersonService {
  public ip: any = '';
  private urlGetInfo = '/api/customer/show/';
  private urlGetLog = '/api/statitic/log_customer/';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    console.log(this.ip);
  }

  getInfomation(id): Observable<any> {
    const url = this.ip + this.urlGetInfo + id;
    return this.http.get<any>(url);
  }

  getLog(id): Observable<any> {
    const url = this.ip + this.urlGetLog + id;
    return this.http.get<any>(url);
  }
}
