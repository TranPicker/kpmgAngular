import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class SearchProfileService {
  public ip: any = '';
  private urlGetAll = '/api/statitic/get_function';

  constructor(private http: HttpClient, public configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetAll = this.ip + this.urlGetAll;
  }

  getFunctions(): Observable<any> {
    return this.http.get<any>(this.urlGetAll);
  }
}
