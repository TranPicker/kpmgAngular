import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class StaffService {
  public ip: any = '';
  private urlGetAllCustomer = '/api/customer/anyData_post';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
  }

  getAllCustomer(data): Observable<any> {
    const url = this.ip + this.urlGetAllCustomer; // con get theo data
    console.log(url);
    return this.http.post<any>(url, {
      'function': data
  })
    ;
  }
}
