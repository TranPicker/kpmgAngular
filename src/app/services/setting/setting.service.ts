import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SettingService {
  private urlGhetZone = 'http://192.168.10.41/api/config/zone/any-data';

  constructor(private http: HttpClient) {
  }

  getZonesSetting(): Observable<any> {
    return this.http.get<any>(this.urlGhetZone);
  }
}
