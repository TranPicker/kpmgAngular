import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Login} from '../../models/login/login';

const httpOptions = {
  headers: new HttpHeaders({'Content-Type': 'application/json'})
};

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private urlLogin = '';

  constructor(private http: HttpClient) {
    this.urlLogin = 'https://path';
  }

  checkLogin(user: Login): Observable<any> {
    return this.http.post<any>(this.urlLogin, user, httpOptions);
  }
}
