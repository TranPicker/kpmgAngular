import {Component, OnInit, OnDestroy} from '@angular/core';
import {Subscription} from 'rxjs';
import {FeedsService} from '../../../../../services/feeds/feeds.service';
import './../../../../../../assets/js/feed.js';
import {Feed} from '../../../../../models/feed/feed';
import swal from 'sweetalert';

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
  private dataMonth: any;
  private feed: Feed = new Feed();
  private input = new FormData();

  constructor(private feedService: FeedsService) {
  }

  ngOnInit() {
    $(document).on('click', '.remove_event', function () {
      const id = $(this).data('id');
      console.log(id);
      this.deleteEvent(id);
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
    const datas = [];
    this.subcription2 = this.feedService.getFeedsWithMonth().subscribe(res => {
      $.each(res.data, function (index, item) {
        datas.push({
          title: index,
          event: item
        });
      });
      this.dataMonth = datas;
    }, error1 => {
      console.log(error1);
    });
  }

  addFeed(file, dateStart, dateEnd) {
    this.feed.file = file.files[0];
    this.feed.date_start = dateStart.value;
    this.feed.date_end = dateEnd.value;
    this.input.append('title', this.feed.title);
    this.input.append('description', this.feed.description);
    this.input.append('date_start', this.feed.date_start);
    this.input.append('date_end', this.feed.date_end);
    this.input.append('favorite', '1,2');
    this.input.append('file', this.feed.file);
    this.feedService.addFeed(this.input).subscribe(res => {
      swal('Add Success!', '', 'success');
    }, error => {
      console.log(error);
    });
    // reset fields
    file.file[0].value = '';
  }

  getRecurrence(value) {
    this.feed.time_repeat = value;
  }

  deleteEvent(id) {
    this.feedService.deleteEvent(id).subscribe(res => {
      console.log(res);
      swal('Delete Success!', '', 'success');
    }, error1 => {
      console.log(error1);
    });
  }

  ngOnDestroy() {
    this.subcription1.unsubscribe();
    this.subcription2.unsubscribe();
  }

}
