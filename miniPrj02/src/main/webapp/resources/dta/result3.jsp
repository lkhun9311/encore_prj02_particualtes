<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

   
    <title>전국단위 시간별 미세먼지 발생 현황</title>
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
     <h5 align="center"> 전국단위 시간별 미세먼지 발생 현황</h5>
    <canvas id="myChart" height="300" width="800"></canvas>
    </div>
    </div>
    </div>
   
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
     const label1 = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시'];
     
     const data1 = {
       labels: label1,
       datasets: [
    	   {
    	    label: '전국단위시간별',
    	    backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
            data: [22,20,23,15,21,47,37,29,27,20,42,46,50,62,48,29,32,32,41,30,34,31,27,28]
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