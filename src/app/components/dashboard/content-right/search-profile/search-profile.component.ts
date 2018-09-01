import {Component, OnInit, AfterContentInit} from '@angular/core';
import {SearchProfileService} from '../../../../services/searchProfile/search-profile.service';
import {Subscription} from 'rxjs';

declare var $: any;
declare var actionSetBackGroundProfile: any;
declare var setBackgroundProfileColor: any;

@Component({
  selector: 'app-search-profile',
  templateUrl: './search-profile.component.html',
  styleUrls: ['./search-profile.component.css']
})
export class SearchProfileComponent implements OnInit, AfterContentInit {
  private allFunction: any;
  private subscription: Subscription;
  constructor(private searchProfileComponent: SearchProfileService) {
  }

  ngOnInit() {
    // get data
    this.getAllFunction();
    $('#multi-select').dropdown();
    // click icon search
    $('#icon-search').click(function () {
      $('#multi-select').click();
    });
  }

  getAllFunction() {
    this.subscription = this.searchProfileComponent.getFunctions().subscribe(res => {
      this.allFunction = res.data;
    }, error1 => {
      console.log(error1);
    });
  }

  ngAfterContentInit() {
  }
}
