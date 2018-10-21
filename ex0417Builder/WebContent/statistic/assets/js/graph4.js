      google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', '참석 명단');
        data.addRows([
          ['송다원'],   
          ['송유진'],  
          ['송다원'],   
          ['송유진'],
          ['송다원'],   
          ['박민정'],
          ['박민정'],
          ['송유진'],
          ['김기광'],
          ['박민정'],
          ['송유진'],    
          ['김기광'],
          ['박민정']
         
        ]);
        
        var table = new google.visualization.Table(document.getElementById('table_div1'));
        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }
      