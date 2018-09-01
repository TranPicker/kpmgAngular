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

  getAllCurrentReport(data): Observable<any> {
    console.log(data);
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
