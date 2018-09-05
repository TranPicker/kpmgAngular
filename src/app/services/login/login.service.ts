import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Login} from '../../models/login/login';
import {ConfigIpService} from '../configIP/config-ip.service';

const httpOptions = {
  headers: new HttpHeaders({'Content-Type': 'multipart/form-data'})
};

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private ip: any = '';
  private urlLogin = '/api/user/login';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlLogin = this.ip + this.urlLogin;
  }

  checkLogin(user: Login): Observable<any> {
    console.log(user);
    return this.http.post<any>(this.urlLogin, {email: user.email, password: user.password});
  }
}
