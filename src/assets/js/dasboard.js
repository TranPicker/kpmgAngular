var zoomIn = true;
var auditColor = '#0191d8';
var taxColor = '#bc1f4a';
var advisoryColor = '#eaaa00';
var centralsrvColor = '#c3007b';
$(document).ready(function () {
  // Set Title Page
  $('.nav-item').click(function () {
    var tt = $(this).children('.nav-link').data('title');
    $('#titlePage').text(tt);
  });
  $('.list-menu .nav-item').click(function () {
    $('.list-menu .nav-item').removeClass('active');
    var srcActive = $(this).children('.nav-link').children('.icon-nav').data('link-active');
    $(this).children('.nav-link').children('.icon-nav').attr('src', srcActive);
    $(this).addClass('active')
  })

  $('.list-menu .nav-item').each(function () {
    var srcActive = $(this).children('.nav-link').children('.icon-nav').data('link-active');
    var srcNormal = $(this).children('.nav-link').children('.icon-nav').data('link-normal');
    if ($(this).hasClass('active')) {
      $(this).children('.nav-link').children('.icon-nav').attr('src', srcActive);
    }
    else {
      $(this).children('.nav-link').mouseover(function () {
        var src = $(this).children('.icon-nav').data('link-active');
        $(this).children('.icon-nav').attr('src', src);
        $('.list-menu .nav-itemv .icon-nav').css({'width': '25px!important', 'height': 'auto!important'});
      });
      $(this).children('.nav-link').mouseout(function () {
        var src = $(this).children('.icon-nav').data('link-normal');
        $(this).children('.icon-nav').attr('src', src);
        $('.list-menu .nav-itemv .icon-nav').css({'width': '25px!important', 'height': 'auto!important'});
      });
    }
  })

  $('#multi-select').dropdown();
  //click icon search

  // Dragable
  $('#map-office').draggable();
  $('.avatar-office').draggable();
  // click map office zoomin
  $('#map-office').click(function () {
    if (zoomIn) zoomin();
    else zoomout();
  });
  //set width progress bar
  setWidthProgressBar();

  // set icon color profile
  setColorProfile('.ico-profile', 'color');
  // set border list profile
  setColorProfile('.border-profile', 'border-color');
  // set title-profile
  setColorProfile('.title-profile', 'color');
  setColorProfile('.number-percent', 'color');
  setColorProfile('.progress-bar', 'background-color');
  setColorProfile('.favarite-title', 'color');


});

// set icon profile color
function setColorProfile(obj, css) {
  $(obj).each(function () {
    var type = $(this).data('profile');
    switch (type) {
      case 'audit': {
        $(this).css(css, auditColor);
        break;
      }
      case 'tax': {
        $(this).css(css, taxColor);
        break;
      }
      case 'advisory': {
        $(this).css(css, advisoryColor);
        break;
      }
      case 'centralsrv': {
        $(this).css(css, centralsrvColor);
        break;
      }
    }
  });
}

function actionSetBackGroundProfile(data) {
  // set Background profile
  setBackgroundProfile(data);
  // $('.menu .item').click(function (data) {
  //   setTimeout(function () {
  //
  //   }, 100);
  //
  // });

}

// set background profile
function setBackgroundProfile() {
  $('.label').each(function () {
    $(this).css({
      'min-width': '210px',
      'position': 'relative',
      'padding-left': '25px'
    });
  });

}

function setBackgroundProfileColor(data = []) {
  for (i = 0; i < data.length; i++) {
    value = data[i].key;
    color = data[i].value
;    $('.item[data-value= value]').css('background', color);
  }
}

// map
function mapAction() {
  $('#map-office').draggable();
  $('.avatar-office').draggable();
  // click map office zoomin
  $('#map-office').click(function () {
    if (zoomIn) {
      zoomin();
    } else {
      zoomout();
    }
  });
}

function setWidthProgressBar() {
  var father = $('.each-favorite').each(function () {
    var perCent = $(this).children('.progress-bar').data('percent');
    $(this).children('.progress-bar').css('width', perCent);
    $(this).children('.number-percent').text(' ' + perCent + ' %');
  });
}

function setHeightElement(ele) {
  // set height for tab-content
  var height = $(window).height() - $(ele).offset().top - 20;
  $(ele).css('height', height);
}

function zoomin() {
  zoomIn = true;
  var myImg = $("#map-office");
  var currWidth = myImg.width();
  if (currWidth === 2500) return false;
  else {
    myImg.css("width", (currWidth + 100));
  }
}

function zoomout() {
  zoomIn = false;
  var myImg = $("#map-office");
  var currWidth = myImg.width();
  if (currWidth === 100) return false;
  else {
    myImg.css("width", (currWidth - 100));
  }
}

//side bar
function openNav(ele) {
  $(ele).css('right', '0');
}

function closeNav(ele) {
  $(ele).css('right', '-420px');
}

function openChatBox(ele) {
  $(ele).css('right', '45px');
}

function closeChatBox(ele) {
  $(ele).css('right', '-355px');
}

//close form create
function closeFormCreate() {
  $('#close-create-rule').click();
}

