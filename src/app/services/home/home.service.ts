import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class HomeService {
  private ip:  any = '';
  private urlGetTimesZone = '/api/timezone';
  private urlGetPersonOnMap = '/api/statitic/dashboard_person';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetTimesZone = this.ip + this.urlGetTimesZone;
    this.urlGetPersonOnMap = this.ip + this.urlGetPersonOnMap;
  }

  getTimeZone(): Observable<any> {
    return this.http.get<any>(this.urlGetTimesZone);
  }

  getCurrentPersonOnMap(data): Observable<any> {
    return this.http.post(this.urlGetPersonOnMap, {
      'function': data
    });
  }
}
