import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StaffService {
  private urlGetAllCustomer = 'http://192.168.10.41/api/customer/anyData?function=';

  constructor(private http: HttpClient) {
  }

  getAllCustomer(data): Observable<any> {

    const  url = this.urlGetAllCustomer + data;
    console.log(url);
    return this.http.get<any>(this.urlGetAllCustomer);
  }
}
