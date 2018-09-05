import {Injectable} from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ConfigIpService {

  constructor() {
  }

  getIp() {
    return 'http://192.168.11.240';
  }
}
