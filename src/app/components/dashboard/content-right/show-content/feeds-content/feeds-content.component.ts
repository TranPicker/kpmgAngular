import {Component, OnInit, OnDestroy} from '@angular/core';
import {Subscription} from 'rxjs';
import './../../../../../../assets/js/dasboard';
import {FeedsService} from '../../../../../services/feeds/feeds.service';
import './../../../../../../assets/js/feed.js';
import {forEach} from '@angular/router/src/utils/collection';

declare var $: any;
declare var setHeightElement: any;
declare var feedFunction: any;

@Component({
  selector: 'app-feeds-content',
  templateUrl: './feeds-content.component.html',
  styleUrls: ['./feeds-content.component.css']
})
export class FeedsContentComponent implements OnInit, OnDestroy {
  private subcription1: Subscription;
  private subcription2: Subscription;
  public datas = [];

  constructor(private feedService: FeedsService) {
  }

  ngOnInit() {
    setHeightElement('#myTabContent');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
    });

    this.getAllFeed();
    this.getFeedsMonth();

  }

  getAllFeed() {
    // get All Data
    this.subcription1 = this.feedService.getAllFeed().subscribe(res => {
      feedFunction(res.data);
    }, error1 => {
      console.log(error1);
    });
  }

  getFeedsMonth() {
    this.subcription2 = this.feedService.getFeedsWithMonth().subscribe(res => {
      $.each(res.data, function (index, item) {
        // this.datas.push({
        //   title: index,
        //   event: item
        // });
      });
    }, error1 => {
      console.log(error1);
    });
  }

  deleteFeed() {
  }

  ngOnDestroy() {
    this.subcription1.unsubscribe();
    this.subcription2.unsubscribe();
  }

}
