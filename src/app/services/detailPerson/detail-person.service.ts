import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DetailPersonService {
  private urlGetInfo = 'http://192.168.10.41/api/customer/show/';
  private urlGetLog = 'http://192.168.10.41/api/statitic/log_customer/';
  constructor(private http: HttpClient) {
  }

  getInfomation(id): Observable<any> {
    const url = this.urlGetInfo + id;
    return this.http.get<any>(url);
  }

  getLog(id): Observable<any> {
    const url = this.urlGetLog + id;
    console.log(url);
    return this.http.get<any>(url);
  }
}
