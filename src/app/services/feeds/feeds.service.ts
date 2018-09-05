import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Feed} from '../../models/feed/feed';
import {ConfigIpService} from '../configIP/config-ip.service';

@Injectable({
  providedIn: 'root'
})
export class FeedsService {
  private ip: any = '';
  private urlGetAllFeed = '/api/feed_data/anyData';
  private urlGetFeedMonth = '/api/feed_data/get_month';
  private urlAddFeed = '/api/feed_data';


  constructor(private http: HttpClient, private configIp: ConfigIpService) {
    this.ip = configIp.getIp();
    this.urlGetAllFeed = this.ip + this.urlGetAllFeed;
    this.urlGetFeedMonth = this.ip + this.urlGetFeedMonth;
    this.urlAddFeed = this.ip + this.urlAddFeed;
  }

  getAllFeed(): Observable<any> {
    return this.http.get<any>(this.urlGetAllFeed);

  }

  getFeedsWithMonth(): Observable<any> {
    return this.http.get<any>(this.urlGetFeedMonth);

  }

  addFeed(feed: FormData): Observable<any> {
    return this.http.post<any>(this.urlAddFeed, feed);
  }

  deleteEvent(id): Observable<any> {
    const url = `${this.urlAddFeed}/${id}`;
    return this.http.delete(url);

  }
}
