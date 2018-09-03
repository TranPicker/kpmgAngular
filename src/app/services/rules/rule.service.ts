import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class RuleService {
  public urlGetRule = 'http://192.168.10.41/api/rule/any-data';
  public urlAddRules = 'http://192.168.10.41/api/rule/store';
  public urlGetCondition = 'http://192.168.10.41/api/config/condition/show';
  public urlGetOperator = 'http://192.168.10.41/api/config/condition/operator';

  constructor(private http: HttpClient) {
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
}
