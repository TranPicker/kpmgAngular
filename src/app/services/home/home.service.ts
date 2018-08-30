import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class HomeService {
  private urlChart = 'http://192.168.10.41/api/statitic';

  constructor(private http: HttpClient) {
  }

  // getDataChart(): Observable<any> {
  //   return this.http.post<any>(this.urlChart, {
  //     'month': 8,
  //     'year': 2018,
  //     'function': ['Audit', 'Tax', 'Central Services']
  //   });
  // }
}
