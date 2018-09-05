function drawChart(dl){
  // Set Title Page
  $('.nav-item').click(function () {
    var tt = $(this).children('.nav-link').data('title');
    $('#titlePage').text(tt);
  });
  // CHART 1
  $('#datepicker').datepicker({
    autoclose: true
  });
  function show_dp() {
    $("#datepicker").datepicker('show');
  }
  $('.carousel').carousel({
    interval: 0
  });
  EXPORT_WIDTH = 1000;
  function save_chart(chart, filename) {
    var render_width = EXPORT_WIDTH;
    var render_height = render_width * chart.chartHeight / chart.chartWidth
    var svg = chart.getSVG({
      exporting: {
        sourceWidth: chart.chartWidth,
        sourceHeight: chart.chartHeight
      }
    });
    var canvas = document.createElement('canvas');
    canvas.height = render_height;
    canvas.width = render_width;
    var image = new Image;
    image.onload = function () {
      canvas.getContext('2d').drawImage(this, 0, 0, render_width, render_height);
      var data = canvas.toDataURL("image/png")
      download(data, filename + '.png');
    };
    image.src = 'data:image/svg+xml;base64,' + window.btoa(svg);
  }
  function download(data, filename) {
    var a = document.createElement('a');
    a.download = filename;
    a.href = data
    document.body.appendChild(a);
    a.click();
    a.remove();
  }
  Highcharts.chart('container', {
    chart: {
      type: 'spline',
      scrollablePlotArea: {
        minWidth: 500,
        scrollPositionX: 1
      }
    },
    title: {
      text: ''
    },

    xAxis: {
      type: 'datetime',
      lineColor: '#dbdbdb',
      lineWidth: 1,
    },
    yAxis: {
      lineColor: '#dbdbdb',
      lineWidth: 1,
      min: 0,
      title: {
        text: ' '
      }
    },
    tooltip: {
      shadow: false,
      backgroundColor: '#4a4a4a',
      borderColor: '#4a4a4a',
      borderRadius: 20,
      style: {
        color: '#ffffff',
      },
      useHTML: true,
      headerFormat: '<b>{point.key}<br></b>',
      formatter: function () {
        html = '<div class="mytooltip"> <div class="row">\n' +
          '<div class="col-7 d-flex flex-wrap align-self-center align-items-center" style="border-right:1px solid #ffffff;">\n';
        $.each(this.point.dt, function (k, v) {
          var colorpoint = '';
          switch (k) {
            case 'audit':
              colorpoint = "#0091d9";
              break;
            case 'tax' :
              colorpoint = "#bc1f4a";
              break;
            case 'advisory' :
              colorpoint = "#eaab00";
              break;
            case 'centralservices' :
              colorpoint = "#d10089";
              break;
          }
          html += '<div class="col-6"><i class="fas fa-circle" style="color:' + colorpoint + '"></i>&nbsp;' + v + '&nbsp;&nbsp;</div>';
        })
        html += '</div>\n' +
          '<div class="col-5">\n' +
          '<b style="font-size: 18px;">' + this.y + '</b> <br>' +
          '<a style="font-size: 11px"> ' + Highcharts.dateFormat('@%I:%M%p', this.x) + '</a>' +
          '</div>\n' +
          '</div>\n' +
          '</div>';
        return html;

      }
    },
    plotOptions: {
      spline: {
        lineWidth: 2,
        states: {
          hover: {
            lineWidth: 3
          }
        },
        marker: {
          enabled: false
        },
        pointStart: Date.UTC(2018, 8, 1, 8, 0, 0),
        pointInterval: 3600000, // one hour
      }
    },
    series: [{
      name: ' ',
      lineColor: '#d5708f',
      marker: {
        fillColor: 'white', // dau tron
        lineWidth: 2,
        lineColor: '#d5708f'
      },
      data: [
        {
          y: 0,
          dt: {
            audit: 0,
            tax: 0,
            advisory: 0,
            centralservices: 0,
          },
        },

        {
          y: 39,
          dt: {
            audit: 9,
            tax: 10,
            advisory: 10,
            centralservices: 10
          },
        },
        {
          y: 22,
          dt: {
            audit: 2,
            tax: 5,
            advisory: 10,
            centralservices: 5
          },
        },
        {
          y: 16,
          dt: {
            audit: 3,
            tax: 6,
            advisory: 4,
            centralservices: 3
          },
        },

        {
          y: 110,
          dt: {
            audit: 20,
            tax: 30,
            advisory: 40,
            centralservices: 20
          },
        },
        {
          y: 88,
          dt: {
            audit: 15,
            tax: 13,
            advisory: 35,
            centralservices: 25
          },
        },
        {
          y: 82,
          dt: {
            audit: 13,
            tax: 11,
            advisory: 34,
            centralservices: 24
          },
        },

        {
          y: 77,
          dt: {
            audit: 13,
            tax: 11,
            advisory: 29,
            centralservices: 22
          },
        },
        {
          y: 75,
          dt: {
            audit: 13,
            tax: 11,
            advisory: 27,
            centralservices: 24,
          },
        },
        {
          y: 70,
          dt: {
            audit: 13,
            tax: 11,
            advisory: 23,
            centralservices: 23
          },
        },
        {
          y: 65,
          dt: {
            audit: 11,
            tax: 11,
            advisory: 21,
            centralservices: 22
          },
        },
        {
          y: 45,
          dt: {
            audit: 11,
            tax: 11,
            advisory: 11,
            centralservices: 12
          },
        },
        {
          y: 26,
          dt: {
            audit: 5,
            tax: 9,
            advisory: 9,
            centralservices: 3
          },
        },
        {
          y: 0,
          dt: {
            audit: 0,
            tax: 0,
            advisory: 0,
            centralservices: 0
          }
        }
      ]
    }],
    navigation: {
      menuItemStyle: {
        fontSize: '10px'
      }
    }
  });
  $('#abc').click(function () {
    save_chart($('#container').highcharts(), 'chart');
  });

  // CHART 2
  $('#datepicker2').datepicker({
    autoclose: true,
    format: "MM",
    startView: "months",
    minViewMode: "months"
  });
  function show_dp2() {
    $("#datepicker2").datepicker('show');
  }
  $('#abc2').click(function () {
    save_chart($('#container2').highcharts(), 'chart');
  });
  Highcharts.chart('container2', {
    chart: {
      type: 'column'
    },
    title: {
      text: ' '
    },
    xAxis: {
      type: 'datetime',
      lineColor: '#dbdbdb',
      lineWidth: 1,
      categories: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']
    },
    yAxis: {
      lineColor: '#dbdbdb',
      lineWidth: 1,
      min: 0,
      title: {
        text: ' '
      }
    },
    tooltip: {
      shadow: false,
      backgroundColor: '#4a4a4a',
      borderColor: '#4a4a4a',
      borderRadius: 20,
      style: {
        color: '#ffffff',
      },

      useHTML: true,
      headerFormat: '<div class="mytooltip"> <div class="row">\n' +
      '<div class="col-7 d-flex flex-wrap align-self-center align-items-center" style="border-right:1px solid #ffffff; margin-top:0px;">\n',
      pointFormat: '<div class="col-6"><i class="fas fa-circle" style="color:{series.color}"></i>&nbsp;{point.y}</div>',
      footerFormat: '</div>\n' +
      '<div class="col-5">\n' +
      '<b style="font-size: 18px;">{point.total}</b> <br>' +
      '<b style="font-size: 10px;">{point.x}</b> <br>' +
      '</div>\n' +
      '</div>\n' +
      '</div>',
      shared: true,
    },
    plotOptions: {
      column: {
        stacking: 'normal'
      }
    },
    legend: {

      reversed: true
    },
    series: [

      {  showInLegend: false,
        name: 'Central Services',
        color: '#b30d80',
        data: [2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 1, 4, 4, 2, 5]
      }, {  showInLegend: false,
        name: 'Advisory',
        color: '#bda052',
        data: [1, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 1, 4, 4, 2, 5]
      }, {  showInLegend: false,
        name: 'Tax',
        color: '#cc0f4e',
        data: [1, 2, 3, 2, 1, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 1]
      },
      {  showInLegend: false,
        name: 'Audit',
        color: 'deepskyblue',
        data: [2, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 5, 3, 4, 7, 2, 1]
      }]
  });

  // CHART 3
  $('#datepicker3').datepicker({
    autoclose: true,
    format: "MM",
    startView: "months",
    minViewMode: "months"
  });
  function show_dp3() {
    $("#datepicker3").datepicker('show');
  }
  $('#abc3').click(function () {
    save_chart($('#container3').highcharts(), 'chart');
  });
  Highcharts.chart('container3', {
    chart: {
      type: 'column'
    },
    title: {
      text: ''
    },
    subtitle: {
      text: ''
    },
    xAxis: {
      lineColor: '#dbdbdb',
      lineWidth: 1,
      categories: [
        'Week 1',
        'Week 2',
        'Week 3',
        'Week 4',
        'Week 5'
      ],
      crosshair: true
    },
    yAxis: {
      lineColor: '#dbdbdb',
      lineWidth: 1,
      min: 0,
      title: {
        text: ' '
      }
    },
    tooltip: {
      shadow: false,
      backgroundColor: '#4a4a4a',
      borderColor: '#4a4a4a',
      borderRadius: 20,
      style: {
        color: '#ffffff',
      },
      useHTML: true,
      headerFormat: '<b>{point.key}<br></b>',
      formatter: function () {
        html = '<div class="mytooltip"> <div class="row">\n' +
          '<div class="col-7 d-flex flex-wrap align-self-center align-items-center" style="border-right:1px solid #ffffff;">\n';
        $.each(this.point.dt, function (k, v) {
          var colorpoint = '';
          switch (k) {
            case 'audit':
              colorpoint = "#0091d9";
              break;
            case 'tax' :
              colorpoint = "#bc1f4a";
              break;
            case 'advisory' :
              colorpoint = "#eaab00";
              break;
            case 'centralservices' :
              colorpoint = "#d10089";
              break;
          }
          html += '<div class="col-6"><i class="fas fa-circle" style="color:' + colorpoint + '"></i>&nbsp;' + v + '&nbsp;&nbsp;</div>';
        })
        html += '</div>\n' +
          '<div class="col-5">\n' +
          '<b style="font-size: 18px;">' + this.y + '</b> <br>' +
          '<a style="font-size: 11px"> ' + Highcharts.dateFormat('@%I:%M%p', this.x) + '</a>' +
          '</div>\n' +
          '</div>\n' +
          '</div>';
        return html;
      }
    },
    plotOptions: {
      column: {
        pointPadding: 0.2,
        borderWidth: 0
      }
    },
    legend:{

    },
    series: [
      {
        name: 'EVENT',
        color: '#522304',
        data: [
          {
            y: 12,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 59,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 59,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 59,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 59,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      },
      {
        name: 'BAR',
        color: '#a5673f',
        data: [
          {
            y: 43,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 29,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 25,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 26,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 27,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      },
      {
        name: 'CAFE',
        color: '#a9836a',
        data: [
          {
            y: 35,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 20,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 20,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 20,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 20,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      },
      {
        name: 'COLLABORATION',
        color: '#daab8d',
        data: [
          {
            y: 9,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 30,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 32,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 32,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 33,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      },
      {
        name: 'GRABGO',
        color: '#868484',
        data: [
          {
            y: 29,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 9,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 12,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 18,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 14,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      }, {
        name: 'FUN',
        color: '#313130',
        data: [
          {
            y: 23,
            dt: {
              audit: 0,
              tax: 0,
              advisory: 0,
              centralservices: 0,
            },
          },
          {
            y: 39,
            dt: {
              audit: 9,
              tax: 10,
              advisory: 10,
              centralservices: 10
            },
          },
          {
            y: 22,
            dt: {
              audit: 2,
              tax: 5,
              advisory: 10,
              centralservices: 5
            },
          },
          {
            y: 16,
            dt: {
              audit: 3,
              tax: 6,
              advisory: 4,
              centralservices: 3
            },
          },
          {
            y: 37,
            dt: {
              audit: 13,
              tax: 11,
              advisory: 29,
              centralservices: 22
            },
          },
        ]
      }
    ]
  });


}
