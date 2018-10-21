google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);


function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['날짜', '참석', '불참'],
    ['9/20',  10,      4],
    ['9/21',  17,      6],
    ['9/22',  6,       24],
    ['9/23',  10,      2],
    ['9/24',  10,      2],
    ['9/25',  60,      20],
    ['9/24',  0,      0],
    ['9/25',  0,      0]
  ]);

  var options = {
//    title: '참석자, 불참자 실시간 그래프 ',
    hAxis: {title: '날짜',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0}
  };

  var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
  chart.draw(data, options);
}