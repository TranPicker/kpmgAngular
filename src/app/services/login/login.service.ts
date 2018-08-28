import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Login} from '../../models/login/login';

const httpOptions = {
  headers: new HttpHeaders({'Content-Type': 'multipart/form-data'})
};

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private urlLogin = '';

  constructor(private http: HttpClient) {
    this.urlLogin = 'http://kpmg.dev-altamedia.com/api/user/login';
  }

  checkLogin(user: Login): Observable<any> {
console.log(user);
    return this.http.post<any>(this.urlLogin, {email: user.email, password: user.password});
  }
}
