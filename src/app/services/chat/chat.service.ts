import {Injectable} from '@angular/core';
import * as io from 'socket.io-client';
import {Observable} from 'rxjs';
import {HttpClient} from '@angular/common/http';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})

export class ChatService {
  private ip: any = '';
  private urlPostMessages = '/api/customer/bot';

  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlPostMessages = this.ip + this.urlPostMessages;
  }

  sendMessage(data): Observable<any> {
    return this.http.post(this.urlPostMessages, {
      'message': data
    });
  }
}
