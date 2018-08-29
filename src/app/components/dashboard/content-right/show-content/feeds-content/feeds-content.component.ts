import {Component, OnInit, OnDestroy} from '@angular/core';
import {Subscription} from 'rxjs';
import './../../../../../../assets/js/dasboard';
import {FeedsService} from '../../../../../services/feeds/feeds.service';
import './../../../../../../assets/js/feed.js';

declare var $: any;
declare var setHeightElement: any;
declare var feedFunction: any;

@Component({
  selector: 'app-feeds-content',
  templateUrl: './feeds-content.component.html',
  styleUrls: ['./feeds-content.component.css']
})
export class FeedsContentComponent implements OnInit, OnDestroy {
  private subcription: Subscription;
  constructor(private feedService: FeedsService) {
  }

  ngOnInit() {
    setHeightElement('#myTabContent');
    $(window).resize(function () {
      setHeightElement('#myTabContent');
    });

    this.getAllFeed();
  }

  getAllFeed() {
    // get All Data
    this.subcription = this.feedService.getAllFeed().subscribe(res => {
      feedFunction(res.data);
    }, error1 => {
      console.log(error1);
    });
  }

  ngOnDestroy() {
    this.subcription.unsubscribe();
  }

}
