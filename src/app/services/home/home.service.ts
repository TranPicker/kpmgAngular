import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class HomeService {
  private urlGetTimesZone = 'http://192.168.10.41/api/timezone';

  constructor(private http: HttpClient) {
  }

  getTimeZone(): Observable<any> {
    return this.http.get<any>(this.urlGetTimesZone);
  }
}
