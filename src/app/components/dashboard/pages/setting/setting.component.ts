import {Component, OnInit} from '@angular/core';

declare var $: any;
declare var setHeightElement: any;
@Component({
  selector: 'app-setting',
  templateUrl: './setting.component.html',
  styleUrls: ['./setting.component.css']
})
export class SettingComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {
    $('.nav-item').click(function () {
      const tt = $(this).children('.nav-link').data('title');
      $('#titlePage').text(tt);
    });
  }

}
