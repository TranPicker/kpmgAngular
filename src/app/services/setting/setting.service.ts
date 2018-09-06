import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {ConfigIpService} from '../configIP/config-ip.service';
import {User} from '../../models/setting/user';

@Injectable({
  providedIn: 'root'
})
export class SettingService {
  public ip: any = '';
  private urlGetZone = '/api/config/zone/any-data';
  private urlGetUsers = '/employee/anyData';
  private urlDeleteUser = '/employee/delete/';
  private urlGetRoleSetting = '/user/role';
  private urlAddUser = '/employee';
  private urlGetUserById = '/employee/get_id/';
  private urlUpdateUser = '/employee/';
  // Zone
  private urlDeleteZone = '/api/config/zone/destroy/';
  private urlGetTagAll = '/api/tag/all';
  private urlAddZone = 'url';
  // Yitu
  private urlGetYitu = '/api/config/log/any-data';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetZone = this.ip + this.urlGetZone;
    this.urlGetUsers = this.ip + this.urlGetUsers;
    this.urlDeleteUser = this.ip + this.urlDeleteUser;
    this.urlGetRoleSetting = this.ip + this.urlGetRoleSetting;
    this.urlAddUser = this.ip + this.urlAddUser;
    this.urlGetUserById = this.ip + this.urlGetUserById;
    this.urlUpdateUser = this.ip + this.urlUpdateUser;
    this.urlDeleteZone = this.ip + this.urlDeleteZone;
    this.urlGetTagAll = this.ip + this.urlGetTagAll;
    this.urlAddZone = this.ip + this.urlAddZone;
    this.urlGetYitu = this.ip + this.urlGetYitu;


  }

  getZonesSetting(): Observable<any> {
    return this.http.get<any>(this.urlGetZone);
  }

  getUsersSetting(): Observable<any> {
    return this.http.get<any>(this.urlGetUsers);
  }

  getUSerSettingById(id): Observable<any> {
    const url = this.urlGetUserById + id;
    console.log(url);
    return this.http.get(url);
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

  updateUserSetting(data: User): Observable<any> {
    const url = this.urlUpdateUser + data.id;
    return this.http.put<any>(url, {
      'full_name': data.full_name,
      'phone': data.phone,
      'email': data.email,
      'password': data.password,
      'permission': data.permission
    });
  }

  // zone
  getAllTag(): Observable<any> {
    return this.http.get<any>(this.urlGetTagAll);
  }

  addZone(data): Observable<any> {
    return this.http.post(this.urlAddZone, data);
  }

  deleteZone(id): Observable<any> {
    const url = this.urlDeleteZone + id;
    return this.http.delete<any>(url);
  }

  // ytu
  getListYitu(): Observable<any> {
    return this.http.get<any>(this.urlGetYitu);
  }
}
