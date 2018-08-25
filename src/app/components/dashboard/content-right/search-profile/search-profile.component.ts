import {Component, OnInit} from '@angular/core';
declare var $: any;

@Component({
  selector: 'app-search-profile',
  templateUrl: './search-profile.component.html',
  styleUrls: ['./search-profile.component.css']
})
export class SearchProfileComponent implements OnInit {

  constructor() {
  }

  ngOnInit() {
    $('#multi-select').dropdown();
    // click icon search
    $('#icon-search').click(function () {
      $('#multi-select').click();
    });

    $('.menu .item').click(function () {
      setTimeout(function () {
        setBackgroundProfile();
      }, 100);
    });
    // set background profile
    function setBackgroundProfile() {
      $('.label').each(function () {
        const type = $(this).data('value');
        switch (type) {
          case 'audit': {
            $(this).addClass('bg-audit');
            break;
          }
          case 'tax': {
            $(this).addClass('bg-tax');
            break;
          }
          case 'advisory': {
            $(this).addClass('bg-advisory');
            break;
          }
          case 'centralsrv': {
            $(this).addClass('bg-centralsrv');
            break;
          }
        }
      });
    }
  }
}
