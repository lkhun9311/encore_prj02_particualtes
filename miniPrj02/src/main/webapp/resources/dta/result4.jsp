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
          },
          {
        	label: '경기',  
        	backgroundColor: 'rgba(255, 153, 51, 1)',
            borderColor: 'rgba(255, 153, 51, 1)',
            data: [1,10,33,7,30,0,0,0,0,0,0,7,2]
          },
          {
          	label: '인천',  
          	backgroundColor: 'rgba(255, 255, 51, 1)',
            borderColor: 'rgba(255, 255, 51, 1)',
              data: [3,5,31,6,21,0,0,0,0,9,4]
            }
          ,
          {
          	label: '세종',  
          	backgroundColor: 'rgba(153, 255, 51, 1)',
            borderColor: 'rgba(153, 255, 51, 1)',
              data: [0,4,4,1,4,0,0,0,0,0,2,1]
            }
          ,
          {
          	label: '충북',  
          	backgroundColor: 'rgba(51, 255, 51, 1)',
            borderColor: 'rgba(51, 255, 51, 1)',
              data: [1,8,15,4,18,0,0,0,0,0,4,0]
            }
          ,
          {
          	label: '충남',  
          	 backgroundColor: 'rgba(51, 255, 153, 1)',
             borderColor: 'rgba(51, 255, 153, 1)',
              data: [1,8,20,3,19,0,0,0,0,0,5,3]
            }
          ,
          {
          	label: '대전',  
          	backgroundColor: 'rgba(51, 255, 255, 1)',
            borderColor: 'rgba(51, 255, 255, 1)',
              data: [1,3,10,3,12,0,0,0,0,0,0,2]
            }
          ,
          {
          	label: '전북',  
          	backgroundColor: 'rgba(51, 153, 255, 1)',
            borderColor: 'rgba(51, 153, 255, 1)',
              data: [3,10,15,5,18,0,0,0,0,0,2,2]
            }
          ,
          {
          	label: '전남',  
          	backgroundColor: 'rgba(51, 51, 255, 1)',
            borderColor: 'rgba(51, 51, 255, 1)',
              data: [0,2,7,2,10,0,0,0,0,0,0,0]
            }
          ,
          {
          	label: '광주',  
          	backgroundColor: 'rgba(153, 51, 255, 1)',
            borderColor: 'rgba(153, 51, 255, 1)',
              data: [0,2,4,2,7,0,0,0,0,0,1,0]
            }
          ,
          {
          	label: '대구',  
          	 backgroundColor: 'rgba(255, 51, 255, 1)',
             borderColor: 'rgba(255, 51, 255, 1)',
              data: [1,1,8,1,2,0,0,0,0,0,1,0]
            }
          ,
          {
          	label: '경북',  
          	backgroundColor: 'rgba(255, 51, 153, 1)',
            borderColor: 'rgba(255, 51, 153, 1)',
              data: [2,2,19,4,14,0,0,0,0,0,0,0]
            }
          ,
          {
          	label: '경남',  
          	backgroundColor: 'rgba(0, 0, 0, 1)',
            borderColor: 'rgba(0, 0, 0, 1)',
              data: [5,6,103,10,54,0,0,0,0,0,0,0]
            }
          ,
          {
          	label: '울산',  
          	backgroundColor: 'rgba(160, 160, 160, 1)',
            borderColor: 'rgba(160, 160, 160, 1)',
              data: [0,0,5,1,1,0,0,0,0,0,0,0]
            }
          ,
          {
          	label: '부산',  
          	backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
              data: [5,4,26,3,12,0,0,0,0,0,0,0]
            }
          ,
          {
          	label: '강원',  
          	backgroundColor: 'rgba(0, 255, 0, 1)',
            borderColor: 'rgba(0, 255, 0, 1)',
              data: [1,4,20,4,20,0,0,0,0,0,1,0]
            }
          ,
          {
          	label: '제주',  
          	backgroundColor: 'rgba(0, 0, 255, 1)',
            borderColor: 'rgba(0, 0, 255, 1)',
              data: [0,2,6,1,5,0,0,0,0,0,0,0]
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