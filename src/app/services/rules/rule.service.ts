import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class RuleService {
  public ip: any = '';
  public urlGetRule = '/api/rule/any-data';
  public urlAddRules = '/api/rule/store';
  public urlGetCondition = '/api/config/condition/show';
  public urlGetOperator = '/api/config/condition/operator';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetRule = this.ip + this.urlGetRule;
    this.urlAddRules = this.ip + this.urlAddRules;
    this.urlGetCondition = this.ip + this.urlGetCondition;
    this.urlGetOperator = this.ip + this.urlGetOperator;
  }

  getRuleChat(): Observable<any> {
    return this.http.get<any>(this.urlGetRule);
  }

  getCondition(): Observable<any> {
    return this.http.get<any>(this.urlGetCondition);
  }

  getOperator(): Observable<any> {
    return this.http.get<any>(this.urlGetOperator);
  }

  addRules(data): Observable<any> {
    return this.http.post<any>(this.urlAddRules, data);
  }
}
