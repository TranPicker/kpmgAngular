import {Component, OnInit} from '@angular/core';
import './../../../../../../assets/js/dasboard';

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

  constructor() {
  }

  ngOnInit() {
    // set width progress bar
    setWidthProgressBar();
    setColorProfile('.progress-bar', 'background-color');
    setColorProfile('.favarite-title', 'color');
  }
}
