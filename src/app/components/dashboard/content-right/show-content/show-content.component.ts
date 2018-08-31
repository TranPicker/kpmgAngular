import {Component, OnInit} from '@angular/core';
import './../../../../../assets/js/mychart.js';

declare var mapAction: any;


@Component({
  selector: 'app-show-content',
  templateUrl: './show-content.component.html',
  styleUrls: ['./show-content.component.css']
})
export class ShowContentComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {
    mapAction();
  }


}
