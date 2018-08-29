import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Feed} from '../../models/feed/feed';


@Injectable({
  providedIn: 'root'
})
export class FeedsService {
  private urlGetAllFeed = 'http://192.168.10.41/api/feed_data/anyData';
  private urlGetFeedMonth = 'http://192.168.10.41/api/feed_data/get_month';

  private urlAddFeed = '';
  private feed: Feed;

  constructor(private http: HttpClient) {
  }

  getAllFeed(): Observable<any> {
    return this.http.get<any>(this.urlGetAllFeed);

  }

  getFeedsWithMonth(): Observable<any> {
    return this.http.get<any>(this.urlGetFeedMonth);

  }

  addFeed(): Observable<any> {
    return this.http.post<any>(this.urlAddFeed, this.feed);
  }
}
