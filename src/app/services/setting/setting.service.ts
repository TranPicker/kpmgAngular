import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SettingService {
  private urlGetZone = 'http://192.168.10.41/api/config/zone/any-data';
  private urlGetUsers = 'http://192.168.10.41/employee/anyData';
  private urlDeleteUser = 'http://192.168.10.41/employee/delete/';
  private urlGetRoleSetting = 'http://192.168.10.41/user/role';
  private urlAddUser = 'http://192.168.10.41/employee';
  // Ytu
  private urlGetYtu = 'http://kpmg.dev-altamedia.com/api/yitu';

  constructor(private http: HttpClient) {
  }

  getZonesSetting(): Observable<any> {
    return this.http.get<any>(this.urlGetZone);
  }

  getUsersSetting(): Observable<any> {
    return this.http.get<any>(this.urlGetUsers);
  }

  getAllRoles(): Observable<any> {
    return this.http.get<any>(this.urlGetRoleSetting);
  }

  deleteUserSetting(id): Observable<any> {
    const url = this.urlDeleteUser + id;
    return this.http.delete<any>(url);
  }

  addUserSetting(data): Observable<any> {
    return this.http.post<any>(this.urlAddUser, data);
  }

  // ytu
  getListYtu(): Observable<any> {
    return this.http.get<any>(this.urlGetYtu);
  }
}
