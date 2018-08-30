import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class SearchProfileService {
  private urlGetAll = 'http://192.168.10.41/api/statitic/get_function';

  constructor(private http: HttpClient) {
  }

  getFunctions(): Observable<any> {
    return this.http.get<any>(this.urlGetAll);
  }
}
