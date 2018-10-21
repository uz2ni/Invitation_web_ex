 google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', '불참 사유');
//        data.addColumn('number', 'Salary');
//        data.addColumn('boolean', 'Full Time Employee');
        data.addRows([
          ['행사가 재미 없을 것 같아서 '],   
          ['스케쥴이 맞지 않아서 '],    
          ['특별하게 가고 싶은 이유가 없어서'],
          ['스케쥴이 맞지 않아서 '],    
          ['특별하게 가고 싶은 이유가 없어서'],
          ['행사가 재미 없을 것 같아서 '],   
          ['행사가 재미 없을 것 같아서 '],   
          ['스케쥴이 맞지 않아서 '],    
          ['스케쥴이 맞지 않아서 '],    
          ['특별하게 가고 싶은 이유가 없어서'],
          ['행사가 재미 없을 것 같아서 '],   
          ['특별하게 가고 싶은 이유가 없어서'],
          ['행사가 재미 없을 것 같아서 '],   
          ['스케쥴이 맞지 않아서 '],    
          ['특별하게 가고 싶은 이유가 없어서'],
          ['행사가 재미 없을 것 같아서 '],   
          ['스케쥴이 맞지 않아서 '],    
          ['특별하게 가고 싶은 이유가 없어서'],
          ['가고싶은데 회비가 너무 비싸서 ']
        ]);
        
        var table = new google.visualization.Table(document.getElementById('table_div2'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }
      