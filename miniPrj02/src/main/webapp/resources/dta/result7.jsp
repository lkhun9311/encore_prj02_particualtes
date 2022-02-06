<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

   
    <title>지역단위 월별 미세먼지 발생 현황</title>
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
     <h5 align="center"> 지역단위 월별 미세먼지 발생 현황</h5>
    <canvas id="myChart" height="300" width="800"></canvas>
    </div>
    </div>
    </div>
   
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
     const label1 = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
     
     const data1 = {
       labels: label1,
       datasets: [
    	   {
    	    label: '서울',
    	    backgroundColor: 'rgba(255, 51, 51, 1)',
            borderColor: 'rgba(255, 51, 51, 1)',
            data: [1,3,7,1,7,0,0,0,0,0,2,1]
          }
    	  ]
       };
     
    

     const config = {
       type: 'line',
       data: data1,
       options: {
    	   responsive: true,
    	   
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