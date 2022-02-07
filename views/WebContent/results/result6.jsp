<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
   
    <title>지역단위 시간별 미세먼지 발생 현황</title>
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
    <h5 align ="center"> 지역단위 시간별 미세먼지 발생 현황 (서울,경기,인천)</h5>
   <canvas id="myChart1" height="600" width="900"></canvas>
   </div>
   </div>
   </div>
    <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h5 align ="center"> 지역단위 시간별 미세먼지 발생 현황 (강원,충청)</h5>
   <canvas id="myChart2" height="600" width="900"></canvas>
   </div>
   </div>
   </div>
    <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h5 align ="center"> 지역단위 시간별 미세먼지 발생 현황 (경상도,부산,울산,대구)</h5>
   <canvas id="myChart3" height="600" width="900"></canvas>
   </div>
   </div>
   </div>
   <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h5 align ="center"> 지역단위 시간별 미세먼지 발생 현황 (전라도,광주,제주)</h5>
   <canvas id="myChart4" height="600" width="900"></canvas>
   </div>
    </div>
     </div>
   
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
     var label1 = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시'];
     
     var data1 = {
       labels: label1,
       datasets: [
    	   {
    	    label: '서울',
    	    backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
            data: [2,1,0,0,1,2,0,1,0,0,0,2,1,1,1,1,2,0,1,1,3,2,0,0]
          },
          {
        	label: '경기',  
        	backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
            data: [1,1,3,2,6,6,0,0,1,2,2,8,2,8,8,4,4,6,4,6,6,2,5,3]
          },
          {
          	label: '인천',  
          	backgroundColor: 'rgba(255, 51, 255, 1)',
              borderColor: 'rgba(255, 51, 255, 1)',
              data: [0,0,1,3,3,5,2,0,1,1,4,7,4,8,7,3,4,7,4,1,3,2,3,2]
            }
          ,
          {
          	label: '세종',  
          	backgroundColor: 'rgba(0, 255, 0, 1)',
              borderColor: 'rgba(0, 255, 0, 1)',
              data: [0,0,0,1,1,1,1,0,0,0,0,1,2,0,1,1,1,1,1,2,1,1,0,0]
            } 
    	  ]
       };
     
       var config = {
       type: 'bar',
       data: data1,
       options: {
    	   responsive: true,
    	   
       }
       };
     
     
   </script>
   <script>
    var myChart = new Chart(
      document.getElementById('myChart1'),
      config
    );
   </script>
   
   <script>
     var label1 = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시'];
     
     var data1 = {
       labels: label1,
       datasets: [
    	   
          {
          	label: '충북',  
          	backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
              data: [1,0,2,0,1,6,4,3,0,0,0,2,4,3,4,0,1,2,3,8,1,3,2,0]
            }
          ,
          {
          	label: '충남',  
          	backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
              data: [1,1,1,4,2,5,3,0,0,1,1,2,3,8,5,3,3,6,3,1,3,2,0,1]
            }
          ,
          {
          	label: '대전',  
          	backgroundColor: 'rgba(255, 51, 255, 1)',
            borderColor: 'rgba(255, 51, 255, 1)',
              data: [0,1,0,0,0,3,2,3,2,0,0,0,3,3,2,0,2,0,2,3,2,0,3,0]
            }
          ,
          {
          	label: '강원',  
          	backgroundColor: 'rgba(0, 255, 0, 1)',
            borderColor: 'rgba(0, 255, 0, 1)',
              data: [2,1,3,0,0,4,3,4,2,0,0,0,3,5,0,2,2,1,4,2,1,3,3,5]
            }
         
    	  ]
       };
     
       var config = {
       type: 'bar',
       data: data1,
       options: {
    	   responsive: true,
    	   
       }
       };
     
     
   </script>
   <script>
    var myChart = new Chart(
      document.getElementById('myChart2'),
      config
    );
   </script>
   
   <script>
     var label1 = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시'];
     
     var data1 = {
       labels: label1,
       datasets: [
          {
          	label: '대구',  
          	backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
              data: [1,0,1,1,0,1,0,0,1,2,0,3,1,2,0,0,0,0,0,0,1,0,0,0]
            }
          ,
          {
          	label: '경북',  
          	backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
              data: [0,1,3,1,1,1,2,2,3,3,4,2,2,4,3,0,1,0,2,0,0,1,1,4]
            }
          ,
          {
          	label: '경남',  
          	backgroundColor: 'rgba(30, 30, 30, 1)',
              borderColor: 'rgba(30, 30, 30, 1)',
              data: [6,8,4,3,6,8,11,7,10,7,24,12,10,6,9,5,5,2,5,2,7,10,4,7]
            }
          ,
          {
          	label: '울산',  
          	backgroundColor: 'rgba(255, 51, 255, 1)',
            borderColor: 'rgba(255, 51, 255, 1)',
              data: [1,0,0,0,0,1,0,2,1,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0]
            }
          ,
          {
          	label: '부산',  
          	backgroundColor: 'rgba(0, 255, 0, 1)',
              borderColor: 'rgba(0, 255, 0, 1)',
              data: [2,4,5,0,0,0,0,0,5,1,6,3,7,5,3,1,1,2,4,1,0,0,0,0]
            }
         
    	  ]
       };
     
       var config = {
       type: 'bar',
       data: data1,
       options: {
    	   responsive: true,
    	   
       }
       };
     
     
   </script>
   <script>
    var myChart = new Chart(
      document.getElementById('myChart3'),
      config
    );
   </script>
   
    <script>
     var label1 = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시'];
     
     var data1 = {
       labels: label1,
       datasets: [
          {
          	label: '전북',  
          	backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
              data: [0,0,0,0,0,4,6,2,0,0,0,1,4,4,2,7,5,3,3,2,3,4,2,3]
            }
          ,
          {
          	label: '전남',  
          	backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
              data: [0,0,0,0,0,0,1,3,0,3,0,2,0,3,0,1,0,1,2,0,1,0,3,1]
            }
          ,
          {
          	label: '광주',  
          	backgroundColor: 'rgba(255, 51, 255, 1)',
            borderColor: 'rgba(255, 51, 255, 1)',
              data: [0,1,0,0,0,0,1,2,1,0,0,0,1,0,2,1,1,1,2,0,1,1,0,1]
            }
          ,
          {
          	label: '제주',  
          	backgroundColor: 'rgba(0, 255, 0, 1)',
            borderColor: 'rgba(0, 255, 0, 1)',
              data: [1,1,0,0,0,0,1,0,0,0,1,1,3,2,0,0,0,0,0,1,1,0,1,1]
            }
    	   
    	  ]
       };
     
       var config = {
       type: 'bar',
       data: data1,
       options: {
    	   responsive: true,
    	   
       }
       };
     
     
   </script>
   <script>
    var myChart = new Chart(
      document.getElementById('myChart4'),
      config
    );
   </script>

   </body>
</html>