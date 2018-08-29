import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StaffService {
  private urlGetAllCustomer = 'http://192.168.10.41/api/customer/anyData';

  constructor(private http: HttpClient) {
  }

  getAllCustomer(): Observable<any> {
    return this.http.get<any>(this.urlGetAllCustomer);
  }
}
