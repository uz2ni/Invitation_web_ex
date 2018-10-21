google.charts.load('current', {
    'packages': ['bar', 'corechart', 'table']
});
google.charts.setOnLoadCallback(drawChart);
google.charts.setOnLoadCallback(drawTable);

function drawChart() {
	console.log(attendData);
	// 예상 참석, 불참 그래프
    var expectData = google.visualization.arrayToDataTable([
        ['', '예상 참석자 수', ' 참석', ' 불참'],
        ['인원 수', attendData["attendExpectCnt"], attendData["attendYesCnt"], attendData["attendNoCnt"]]
    ]);
    var expectOptions = {
        chart: {
            //            title: '참석여부 통계 결과',
            //            subtitle: '예상인원,참석인원 수 , 불참인원 수,'
        }
    };
    var expectChart = new google.charts.Bar(document.getElementsByName('expectChart')[0]);
    expectChart.draw(expectData, google.charts.Bar.convertOptions(expectOptions));
    
    // 시간 별 대비 참석 인원
    console.log(attendTimeData);
    var timeData = new google.visualization.DataTable();
//    var timeData = google.visualization.arrayToDataTable([
//        ['날짜', '참석', '불참']
//      ]);
    timeData.addColumn('string', '날짜');
    timeData.addColumn('number', '참석');
    timeData.addColumn('number', '불참석');
    
    // array화 작업
    let timeArr = new Array();
    for( var key in attendTimeData ) {
    	// 값을 배열에 집어넣음
    	  timeArr.push(attendTimeData[key]);
    }
    // array 정렬
    timeArr.sort(function(a, b) { // 내림차순
    	return parseInt(b["attendTimeIdx"]) - parseInt(a["attendTimeIdx"]);
    });
    
    console.log(timeArr);
    
    // 값 테이블에 삽입
    for(var i=0 ;i<timeArr.length; i++) {
    	let at = timeArr[i]["attendTimeDate"].indexOf('-');
    	let date = timeArr[i]["attendTimeDate"].substring(at+1);
    	timeData.addRow([date, parseInt(timeArr[i]["attendTimeYesCnt"]), parseInt(timeArr[i]["attendTimeNoCnt"])]);
    }
    
    
    


//    timeData.addRow(['10/14', 20, 10]);
    var timeOptions = {
		// title: '참석자, 불참자 실시간 그래프 ',
	    hAxis: {title: '날짜',  titleTextStyle: {color: '#333'}},
	    vAxis: {minValue: 0}
	  };

	  var timeChart = new google.visualization.AreaChart(document.getElementsByName('timeChart')[0]);
	  timeChart.draw(timeData, timeOptions);
}

function drawTable() {
	console.log(attendListData);
	
	// 행사 참석 명단
    var attendYesListData = new google.visualization.DataTable();
    attendYesListData.addColumn('string', '참석자 명');
    // row 에 참석자 추가
    for(var i=0; i<attendListData["attendYesList"].length; i++) {
    	let name = attendListData["attendYesList"][i]["urlAttendName"];
    	attendYesListData.addRow([name]);
    }
    var attendYesListTable = new google.visualization.Table(document.getElementsByName('attendYesListTable')[0]);
    attendYesListTable.draw(attendYesListData, {showRowNumber: true, width: '100%', height: '100%'});
    
    
    // 행사 불참석 이유
    var attendNoListData = new google.visualization.DataTable();
    attendNoListData.addColumn('string', '불참석 이유');
    // row 에 이유 추가
    for(var i=0; i<attendListData["attendNoList"].length; i++) {
    	let reason = attendListData["attendNoList"][i]["urlAttendContent"];
    	attendNoListData.addRow([reason]);
    }
    var attendNoListTable = new google.visualization.Table(document.getElementsByName('attendNoListTable')[0]);
    attendNoListTable.draw(attendNoListData, {showRowNumber: true, width: '100%', height: '100%'});

  }