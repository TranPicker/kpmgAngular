import {Component, OnInit} from '@angular/core';
import {SettingService} from '../../../../../services/setting/setting.service';


@Component({
  selector: 'app-setting-content',
  templateUrl: './setting-content.component.html',
  styleUrls: ['./setting-content.component.css']
})
export class SettingContentComponent implements OnInit {
  private zones: any;

  constructor(private settingService: SettingService) {
  }

  ngOnInit() {
    this.getZones();
  }

  getZones() {
    this.settingService.getZonesSetting().subscribe(res => {
      this.zones = res.data;
      console.log(this.zones);
    }, err => {
      console.log(err);
    });
  }
}
