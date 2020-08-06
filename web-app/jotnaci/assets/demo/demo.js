demo = {
  initDocumentationCharts: function() {
    if ($('#dailySalesChart').length != 0 && $('#websiteViewsChart').length != 0) {
      /* ----------==========     Daily Sales Chart initialization For Documentation    ==========---------- */

      dataDailySalesChart = {
        labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
        series: [
          [12, 17, 7, 17, 23, 18, 38]
        ]
      };

      optionsDailySalesChart = {
        lineSmooth: Chartist.Interpolation.cardinal({
          tension: 0
        }),
        low: 0,
        high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
        chartPadding: {
          top: 0,
          right: 0,
          bottom: 0,
          left: 0
        },
      }

      var dailySalesChart = new Chartist.Line('#dailySalesChart', dataDailySalesChart, optionsDailySalesChart);

      var animationHeaderChart = new Chartist.Line('#websiteViewsChart', dataDailySalesChart, optionsDailySalesChart);
    }
  },
  initCharts: function(){
      if( $('#roundedLineChart').length != 0 && $('#straightLinesChart').length != 0 && $('#colouredRoundedLineChart').length != 0 &&                 $('#colouredBarsChart').length != 0 && $('#simpleBarChart').length != 0 && $('#multipleBarsChart').length != 0 ){
          /* ----------==========    Rounded Line Chart initialization    ==========---------- */

          dataRoundedLineChart = {
              labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
              series: [
                  [12, 17, 7, 17, 23, 18, 38]
              ]
          };

          optionsRoundedLineChart = {
              lineSmooth: Chartist.Interpolation.cardinal({
                  tension: 10
              }),
              axisX: {
                  showGrid: false,
              },
              low: 0,
              high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
              chartPadding: { top: 0, right: 0, bottom: 0, left: 0},
              showPoint: false
          }

          var RoundedLineChart = new Chartist.Line('#roundedLineChart', dataRoundedLineChart, optionsRoundedLineChart);

          md.startAnimationForLineChart(RoundedLineChart);


          /*  **************** Straight Lines Chart - single line with points ******************** */

          dataStraightLinesChart = {
            labels: ['\'07','\'08','\'09', '\'10', '\'11', '\'12', '\'13', '\'14', '\'15'],
            series: [
              [10, 16, 8, 13, 20, 15, 20, 34, 30]
            ]
          };

          optionsStraightLinesChart = {
              lineSmooth: Chartist.Interpolation.cardinal({
                  tension: 0
              }),
              low: 0,
              high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
              chartPadding: { top: 0, right: 0, bottom: 0, left: 0},
              classNames: {
                  point: 'ct-point ct-white',
                  line: 'ct-line ct-white'
              }
          }

          var straightLinesChart = new Chartist.Line('#straightLinesChart', dataStraightLinesChart, optionsStraightLinesChart);

          md.startAnimationForLineChart(straightLinesChart);


          /*  **************** Coloured Rounded Line Chart - Line Chart ******************** */


          dataColouredRoundedLineChart = {
            labels: ['\'06','\'07','\'08','\'09', '\'10', '\'11', '\'12', '\'13', '\'14','\'15'],
            series: [
              [287, 480, 290, 554, 690, 690, 500, 752, 650, 900, 944]
            ]
          };

          optionsColouredRoundedLineChart = {
            lineSmooth: Chartist.Interpolation.cardinal({
                tension: 10
            }),
            axisY: {
                showGrid: true,
                offset: 40
            },
            axisX: {
                showGrid: false,
            },
            low: 0,
            high: 1000,
            showPoint: true,
            height: '300px'
          };


          var colouredRoundedLineChart = new Chartist.Line('#colouredRoundedLineChart', dataColouredRoundedLineChart, optionsColouredRoundedLineChart);

          md.startAnimationForLineChart(colouredRoundedLineChart);


          /*  **************** Coloured Rounded Line Chart - Line Chart ******************** */


          dataColouredBarsChart = {
            labels: ['\'06','\'07','\'08','\'09', '\'10', '\'11', '\'12', '\'13', '\'14','\'15'],
            series: [
              [287, 385, 490, 554, 586, 698, 695, 752, 788, 846, 944],
              [67, 152, 143,  287, 335, 435, 437, 539, 542, 544, 647],
              [23, 113, 67, 190, 239, 307, 308, 439, 410, 410, 509]
            ]
          };

          optionsColouredBarsChart = {
            lineSmooth: Chartist.Interpolation.cardinal({
                tension: 10
            }),
            axisY: {
                showGrid: true,
                offset: 40
            },
            axisX: {
                showGrid: false,
            },
            low: 0,
            high: 1000,
            showPoint: true,
            height: '300px'
          };


          var colouredBarsChart = new Chartist.Line('#colouredBarsChart', dataColouredBarsChart, optionsColouredBarsChart);

          md.startAnimationForLineChart(colouredBarsChart);



          /*  **************** Public Preferences - Pie Chart ******************** */

          var dataPreferences = {
              labels: ['62%','32%','6%'],
              series: [62, 32, 6]
          };

          var optionsPreferences = {
              height: '230px'
          };

          Chartist.Pie('#chartPreferences', dataPreferences, optionsPreferences);

          /*  **************** Simple Bar Chart - barchart ******************** */

          var dataSimpleBarChart = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [
              [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895]
            ]
          };

          var optionsSimpleBarChart = {
            seriesBarDistance: 10,
            axisX: {
              showGrid: false
            }
          };

          var responsiveOptionsSimpleBarChart = [
            ['screen and (max-width: 640px)', {
              seriesBarDistance: 5,
              axisX: {
                labelInterpolationFnc: function (value) {
                  return value[0];
                }
              }
            }]
          ];

          var simpleBarChart = Chartist.Bar('#simpleBarChart', dataSimpleBarChart, optionsSimpleBarChart, responsiveOptionsSimpleBarChart);

          //start animation for the Emails Subscription Chart
          md.startAnimationForBarChart(simpleBarChart);


          var dataMultipleBarsChart = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [
              [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895],
              [412, 243, 280, 580, 453, 353, 300, 364, 368, 410, 636, 695]
            ]
          };

          var optionsMultipleBarsChart = {
              seriesBarDistance: 10,
              axisX: {
                  showGrid: false
              },
              height: '300px'
          };

          var responsiveOptionsMultipleBarsChart = [
            ['screen and (max-width: 640px)', {
              seriesBarDistance: 5,
              axisX: {
                labelInterpolationFnc: function (value) {
                  return value[0];
                }
              }
            }]
          ];

          var multipleBarsChart = Chartist.Bar('#multipleBarsChart', dataMultipleBarsChart, optionsMultipleBarsChart, responsiveOptionsMultipleBarsChart);

          //start animation for the Emails Subscription Chart
          md.startAnimationForBarChart(multipleBarsChart);
      }

  },

  initDashboardPageCharts: function() {

    if ($('#dailySalesChart').length != 0 || $('#completedTasksChart').length != 0 || $('#websiteViewsChart').length != 0) {
      /* ----------==========     Daily Sales Chart initialization    ==========---------- */

      dataDailySalesChart = {
        labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
        series: [
          [12, 17, 7, 17, 23, 18, 38]
        ]
      };

      optionsDailySalesChart = {
        lineSmooth: Chartist.Interpolation.cardinal({
          tension: 0
        }),
        low: 0,
        high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
        chartPadding: {
          top: 0,
          right: 0,
          bottom: 0,
          left: 0
        },
      }

      var dailySalesChart = new Chartist.Line('#dailySalesChart', dataDailySalesChart, optionsDailySalesChart);

      md.startAnimationForLineChart(dailySalesChart);



      /* ----------==========     Completed Tasks Chart initialization    ==========---------- */

      dataCompletedTasksChart = {
        labels: ['12p', '3p', '6p', '9p', '12p', '3a', '6a', '9a'],
        series: [
          [230, 750, 450, 300, 280, 240, 200, 190]
        ]
      };

      optionsCompletedTasksChart = {
        lineSmooth: Chartist.Interpolation.cardinal({
          tension: 0
        }),
        low: 0,
        high: 1000, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
        chartPadding: {
          top: 0,
          right: 0,
          bottom: 0,
          left: 0
        }
      }

      var completedTasksChart = new Chartist.Line('#completedTasksChart', dataCompletedTasksChart, optionsCompletedTasksChart);

      // start animation for the Completed Tasks Chart - Line Chart
      md.startAnimationForLineChart(completedTasksChart);


      /* ----------==========     Emails Subscription Chart initialization    ==========---------- */

      var dataWebsiteViewsChart = {
        labels: ['J', 'F', 'M', 'A', 'M', 'J', 'J', 'A', 'S', 'O', 'N', 'D'],
        series: [
          [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895]

        ]
      };
      var optionsWebsiteViewsChart = {
        axisX: {
          showGrid: false
        },
        low: 0,
        high: 1000,
        chartPadding: {
          top: 0,
          right: 5,
          bottom: 0,
          left: 0
        }
      };
      var responsiveOptions = [
        ['screen and (max-width: 640px)', {
          seriesBarDistance: 5,
          axisX: {
            labelInterpolationFnc: function(value) {
              return value[0];
            }
          }
        }]
      ];
      var websiteViewsChart = Chartist.Bar('#websiteViewsChart', dataWebsiteViewsChart, optionsWebsiteViewsChart, responsiveOptions);

      //start animation for the Emails Subscription Chart
      md.startAnimationForBarChart(websiteViewsChart);
    }
  },
  
  


  initGoogleMaps: function() {
    var myLatlng = new google.maps.LatLng(14.6674449, -17.4416763);
    var mapOptions = {
      zoom: 13,
      center: myLatlng,
      scrollwheel: false, //we disable de scroll over the map, it is a really annoing when you scroll through page
      styles: [{
        "featureType": "water",
        "stylers": [{
          "saturation": 43
        }, {
          "lightness": -11
        }, {
          "hue": "#0088ff"
        }]
      }, {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [{
          "hue": "#ff0000"
        }, {
          "saturation": -100
        }, {
          "lightness": 99
        }]
      }, {
        "featureType": "road",
        "elementType": "geometry.stroke",
        "stylers": [{
          "color": "#808080"
        }, {
          "lightness": 54
        }]
      }, {
        "featureType": "landscape.man_made",
        "elementType": "geometry.fill",
        "stylers": [{
          "color": "#ece2d9"
        }]
      }, {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [{
          "color": "#ccdca1"
        }]
      }, {
        "featureType": "road",
        "elementType": "labels.text.fill",
        "stylers": [{
          "color": "#767676"
        }]
      }, {
        "featureType": "road",
        "elementType": "labels.text.stroke",
        "stylers": [{
          "color": "#ffffff"
        }]
      }, {
        "featureType": "poi",
        "stylers": [{
          "visibility": "off"
        }]
      }, {
        "featureType": "landscape.natural",
        "elementType": "geometry.fill",
        "stylers": [{
          "visibility": "on"
        }, {
          "color": "#b8cb93"
        }]
      }, {
        "featureType": "poi.park",
        "stylers": [{
          "visibility": "on"
        }]
      }, {
        "featureType": "poi.sports_complex",
        "stylers": [{
          "visibility": "on"
        }]
      }, {
        "featureType": "poi.medical",
        "stylers": [{
          "visibility": "on"
        }]
      }, {
        "featureType": "poi.business",
        "stylers": [{
          "visibility": "simplified"
        }]
      }]

    };
    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

    var marker = new google.maps.Marker({
      position: myLatlng,
      title: "Jotnaci!"
    });

    // To add the marker to the map, call setMap();
    marker.setMap(map);
  }

}