var zoomIn = true;
var auditColor = '#0191d8';
var taxColor = '#bc1f4a';
var advisoryColor = '#eaaa00';
var centralsrvColor = '#c3007b';
var datas = '';
$(document).ready(function () {
 


  setIconActiveNavLink();
  // Set Title Page
  $('.nav-item').click(function () {
    var tt = $(this).children('.nav-link').data('title');
    $('#titlePage').text(tt);
  });

  $('.list-menu .nav-item').click(function () {
    $('.list-menu .nav-item').removeClass('active');
    $(this).addClass('active');
    setIconNormalNavLink();
    setIconActiveNavLink();
    setMouseoverMenuNav();
    setMouseOutMenuNav();
    var srcActive = $(this).children('.nav-link').children('.icon-nav').data('link-active');
    console.log(srcActive);
    $(this).children('.nav-link').children('.icon-nav').attr('src', srcActive);
  })
  setMouseoverMenuNav();
  setMouseOutMenuNav();



  $('#multi-select').dropdown();
  //click icon search
  // Dragable
  $('#map-office').draggable();
  $('.avatar-office').draggable();
  // click map office zoomin
  ;
  //set width progress bar
  setWidthProgressBar();


  // set color background menu item
  clickItem()
});

function clickItem() {
  $(document).on('click', '.menu .item', function () {
    set();
  })
}
function setMouseoverMenuNav() {
  $('.list-menu .nav-item').not('.active').children('.nav-link').mouseover(function () {
    var src = $(this).children('.icon-nav').data('link-active');
    $(this).children('.icon-nav').attr('src', src);
    $('.list-menu .nav-item .icon-nav').css({'width': '25px!important', 'height': 'auto!important'});
    setIconActiveNavLink();
  });
}
function setMouseOutMenuNav(){
  $('.list-menu .nav-item').not('.active').children('.nav-link').mouseout(function () {
    var src = $(this).children('.icon-nav').data('link-normal');
    $(this).children('.icon-nav').attr('src', src);
    $('.list-menu .nav-item .icon-nav').css({'width': '25px!important', 'height': 'auto!important'});
    setIconActiveNavLink();
  });
}
function setIconActiveNavLink() {
  $('.list-menu .nav-item.active').each(function () {
    var src = $(this).children('.nav-link').children('.icon-nav').data('link-active');
    $(this).children('.nav-link').children('.icon-nav').attr('src', src);
  })
}
function setIconNormalNavLink() {
  $('.list-menu .nav-item').each(function () {
    var src = $(this).children('.nav-link').children('.icon-nav').data('link-normal');
    $(this).children('.nav-link').children('.icon-nav').attr('src', src);
  })
}

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


function set() {
  setTimeout(function () {
    setBackgroundProfile();
  }, 50);
}

// set background profile
function setBackgroundProfile() {
  $('.label').each(function () {
    for (i = 0; i < datas.length; i++) {
      if ($(this).data('value') === datas[i].key) {
        $(this).css('background-color', datas[i].value)
      }
    }
  });
}

// map
function mapAction() {
  $('#map-office').draggable();
  $('.avatar-office').draggable();
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
  var myImg = $("#myCanvas");
  var curWidth = myImg.width();
  var curHeight = myImg.height();
  if (curWidth === 2500) return false;
  else {
    let width = curWidth + 50;
    let height = width * curHeight / curWidth;
    myImg.css("width", width);
    myImg.css("height", height);
  }
}

function zoomout() {
  zoomIn = false;
  var myImg = $("#myCanvas");
  var curWidth = myImg.width();
  var curHeight = myImg.height();
  if (curWidth === 100) return false;
  else {
    let width = curWidth - 50;
    let height = width * curHeight / curWidth;
    myImg.css("width", width);
    myImg.css("height", height);
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
