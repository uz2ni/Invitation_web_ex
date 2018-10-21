google.charts.load('current', {'packages':['table', 'corechart']});
google.charts.setOnLoadCallback(function() { 
    // Place init code here instead of $(document).ready()
	divideChart(beforeFormData, beforeAnswerData);
  }); 

// json 데이터 받아서 table, bar 분리
function divideChart(beforeFormData, beforeAnswerData) {
	for(var i=0; i<beforeFormData["content"].length; i++) {
		// 피드백 박스 복제
		var queBox;
		if(beforeFormData["content"][i]["type"] == 'text') {
			drawTable(i, beforeFormData["content"], beforeAnswerData);
		}else if(beforeFormData["content"][i]["type"] == 'radio') {
			drawChart(i, beforeFormData["content"], beforeAnswerData);
		}
	}
}

// table
function drawTable(index, que, ans) {
	// 데이터 정제
	let title = que[index]['q'];
	let contents = new Array();
	for(var i=0; i<ans.length; i++) {
		contents.push(ans[i]["a"+index]);
	}
	
	// 질문 박스 내용 수정
	$('#title-'+(index+1)).text('Q'+(index+1)+'. ' + title);
	
	// table 생성
	var data = new google.visualization.DataTable();
	data.addColumn('string', title);
	for(var i=0; i<contents.length; i++) {
		console.log(contents[i]);
		data.addRow([contents[i]]);
	}
	
	var table = new google.visualization.Table(document.getElementById('graph-' + (index+1)));
	
	table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
}


// bar
function drawChart(index, que, ans) {
	// 데이터 정제
	let chartTitle = que[index]['q'];
	let cnt = [0, 0, 0, 0]; // 0 index 는 사용 x
	let aNum;
	for(var i=0; i<ans.length; i++) {
		aNum = parseInt(ans[i]["a"+index]);
		cnt[aNum]++;
	}

	// 질문 박스 내용 수정
	$('#title-'+(index+1)).text('Q'+(index+1)+'. ' + chartTitle);

	// chart 생성
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Answer');
    data.addColumn('number', 'count');
    for(var i=0; i<ans.length; i++) {
    	data.addRow([que[index]['q'+(i+1)], cnt[i+1]]);
    }

      var options = {
        title: chartTitle
      };

      var chart = new google.visualization.PieChart(document.getElementById('graph-' + (index+1)));

      chart.draw(data, options);
}

      