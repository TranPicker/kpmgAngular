import { Component, OnInit } from '@angular/core';
import './../../../../../../assets/js/dasboard';
declare var $:any;
declare var setHeightElement: any;
@Component({
  selector: 'app-setting-content',
  templateUrl: './setting-content.component.html',
  styleUrls: ['./setting-content.component.css']
})
export class SettingContentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    setHeightElement('#myTabContent');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
    });
  }

}
