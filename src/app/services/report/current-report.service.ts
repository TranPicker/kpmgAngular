import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CurrentReportService {
  private urlGetAllCurrent = 'http://192.168.10.41/api/statitic/dashboard';
  private urlGetAll = 'http://192.168.10.41/api/statitic/dashboard_current';
  private urlGetId = '';

  constructor(private http: HttpClient) {
  }

  getAllCurrentReport(): Observable<any> {
    return this.http.post<any>(this.urlGetAllCurrent, {
      'function': ['Audit', 'Central Services']
    });
  }

  getAllCustomer(): Observable<any> {
    return this.http.post<any>(this.urlGetAll, {
        'function': ['Audit', 'Central Services']
      }
    );
  }

  getWithId(): Observable<any> {
    return this.http.get<any>(this.urlGetId);
  }
}
