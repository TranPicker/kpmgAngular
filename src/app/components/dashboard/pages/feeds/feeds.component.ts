import {Component, OnInit} from '@angular/core';
import './../../../../../assets/js/index.js';
declare var $: any;
declare var setHeightElement: any;

@Component({
  selector: 'app-feeds',
  templateUrl: './feeds.component.html',
  styleUrls: ['./feeds.component.css']
})
export class FeedsComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {

    setHeightElement('#external');
    setHeightElement('#feed-content');

    $(window).resize(function () {
      setHeightElement('#feed-content');
      setHeightElement('#external');
    });

  }
}
