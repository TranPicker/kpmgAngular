import {Component, Input, OnInit} from '@angular/core';
import './../../../../../../assets/js/dasboard';
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
    this.getZonePerson();
    // set width progress bar
    setWidthProgressBar();
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

  getZonePerson() {
    this.detailPersonService.getLog(this.id).subscribe(res => {
      this.logs = res;
      console.log(this.logs)
    }, error => {
      console.log(error);
    });
  }
}
