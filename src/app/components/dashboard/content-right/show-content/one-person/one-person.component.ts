import {Component, Input, OnInit} from '@angular/core';
import {DetailPersonService} from '../../../../../services/detailPerson/detail-person.service';
import {PersonInfor} from '../../../../../models/personInfor/personInfor';

declare var setWidthProgressBar: any;
declare var setColorProfile: any;
declare var $: any;
declare var openNav: any;
declare var closeNav: any;

@Component({
  selector: 'app-one-person',
  templateUrl: './one-person.component.html',
  styleUrls: ['./one-person.component.css']
})
export class OnePersonComponent implements OnInit {
  @Input('id') id;
  private infor = new PersonInfor();
  private logs: any;

  constructor(private detailPersonService: DetailPersonService) {
  }

  ngOnInit() {
    this.getInforPerson();
    this.getLogPerson();
    // set width progress bar
    setColorProfile('.progress-bar', 'background-color');
    setColorProfile('.favarite-title', 'color');
  }

  getInforPerson() {
    this.detailPersonService.getInfomation(this.id).subscribe(res => {
      this.infor = res.data;
    }, err => {
      console.log(err);
    });
  }

  getLogPerson() {
    this.detailPersonService.getLog(this.id).subscribe(res => {
      this.logs = res;
    }, error => {
      console.log(error);
    });
  }
}
