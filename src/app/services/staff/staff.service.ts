import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class StaffService {
  public ip: any = '';
  private urlGetAllCustomer = '/api/customer/anyData?function=';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
  }

  getAllCustomer(data): Observable<any> {

    const  url = this.ip + this.urlGetAllCustomer; // con get theo data
    return this.http.get<any>(url);
  }
}
