import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class RuleService {
private urlGetRule = 'http://192.168.10.41/api/rule/any-data'
  constructor(private http: HttpClient) { }

  getRuleChat(): Observable<any>{
  return  this.http.get<any>(this.urlGetRule);
  }
}
