import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Login} from '../../models/login/login';


@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private urlLogin = ''

  constructor(private http: HttpClient) {
  }
}
