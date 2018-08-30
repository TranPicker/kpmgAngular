import {Component, OnInit} from '@angular/core';
import {SearchProfileService} from '../../../../services/searchProfile/search-profile.service';
import {Subscription} from 'rxjs';

declare var $: any;
declare var setBackgroundProfile: any;
@Component({
  selector: 'app-search-profile',
  templateUrl: './search-profile.component.html',
  styleUrls: ['./search-profile.component.css']
})
export class SearchProfileComponent implements OnInit {
  private allFunction: any;
  private subscription: Subscription;

  constructor(private searchProfileComponent: SearchProfileService) {
  }

  ngOnInit() {
    $('#multi-select').dropdown();
    // click icon search
    $('#icon-search').click(function () {
      $('#multi-select').click();
    });
    // set Background profile
    $('.menu .item').click(function () {
        setTimeout(function () {
            setBackgroundProfile();
        }, 100);

    });
    // get data
    this.getAllFunction();
  }

  getAllFunction() {
    this.subscription = this.searchProfileComponent.getFunctions().subscribe(res => {
      this.allFunction = res.data;
      console.log(this.allFunction);
    }, error1 => {
      console.log(error1);
    });

  }
}
