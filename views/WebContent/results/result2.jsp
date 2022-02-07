<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

   
    <title>전국단위 일별 미세먼지 발생 현황</title>
    <style>
        body {
              background-color:rgba(255, 255, 128, .5);
             }
    </style>
  </head>
  <body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
 
  
   <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h5 align="center"> 전국단위 일별 미세먼지 발생 현황</h5>
    <canvas id="myChart" height="300" width="800"></canvas>
    </div>
    </div>
    </div>
   
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
     const label1 = ['1/13','1/14','1/15','1/16','1/30','2/1','2/2','2/6','2/7','2/11','2/12','2/13','2/14','3/10','3/11','3/14','3/15','3/16','3/17','3/23','3/26','3/29','3/30','3/31','4/16','4/17','4/28','5/7','5/8','5/9','5/24','5/25','11/19','11/20','11/21','12/8','12/15','12/16'];
     
     const data1 = {
       labels: label1,
       datasets: [
    	   {
    	    label: 'PM10',
    	    backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
            data: [5,5,0,10,2,16,0,0,0,0,0,0,0,0,8,0,0,29,1,9,4,113,50,1,11,41,12,83,23,36,48,14,18,5,2,0,0,0]
          },
          {
      	    label: 'PM2.5',
      	    backgroundColor: 'rgba(255, 0, 0, 1)',
              borderColor: 'rgba(255, 0, 0, 1)',
              data: [0,0,6,1,0,48,8,12,14,15,28,3,2,30,10,9,6,0,0,0,20,83,10,0,0,0,0,43,31,0,0,0,30,9,2,1,27,10]
            },
          ]
       };
     
       const config = {
       type: 'bar',
       data: data1,
       options: {
    	   responsive: true,
    	   scales: {
    		      x: {
    		        stacked: true,
    		      },
    		      y: {
    		        stacked: true
    		      }
    		    }
    	   
       }
       };
     
     
   </script>
   <script>
    const myChart = new Chart(
      document.getElementById('myChart'),
      config
    );
   </script>

   </body>
</html>