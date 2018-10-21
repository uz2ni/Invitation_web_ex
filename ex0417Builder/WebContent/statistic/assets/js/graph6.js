 google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', '하고 싶은 게임');
//        data.addColumn('number', 'Salary');
//        data.addColumn('boolean', 'Full Time Employee');
        data.addRows([
          ['동물의 숲 '],   
          ['보물 찾기 '],    
          ['누가누가 노래 잘하나 게임'],
          ['원카드 '],    
          ['할리갈리 '],
          ['닌텐도 볼링 '],   
          ['동물의 숲 '],   
          ['보물 찾기 '],    
          ['누가누가 노래 잘하나 게임'],
          ['원카드 '],    
          ['할리갈리 '],
          ['닌텐도 볼링 '],   
          ['보물 찾기 '],    
          ['누가누가 노래 잘하나 게임'],
          ['원카드 ']  
        ]);
        
        var table = new google.visualization.Table(document.getElementById('survey_table1'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }
      