import {Component, OnInit} from '@angular/core';
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

    $(window).resize(function () {
      setHeightElement('#feed-content');
      setHeightElement('#external');
    });

  }
}
