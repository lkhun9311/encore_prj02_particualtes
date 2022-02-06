<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <title>지역단위 일별 미세먼지 발생 현황</title>
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
    <h4 align="center"> 지역단위 일별 미세먼지 발생 현황 (서울,경기,인천)</h4>
   <canvas id="myChart1" height="600" width="950"></canvas>
   </div>
   </div>
   </div>
   <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h4 align="center"> 지역단위 일별 미세먼지 발생 현황 (강원,충청)</h4>
   <canvas id="myChart2" height="600" width="950"></canvas>
   </div>
   </div>
   </div>
    <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h4 align="center"> 지역단위 일별 미세먼지 발생 현황 (경상도,부산,울산,대구)</h4>
   <canvas id="myChart3" height="600" width="950"></canvas>
   </div>
      </div>
         </div>
   <div class="col-8 offset-2 my-5">
    <div class="card">
    <div class="card-body">
    <h4 align="center"> 지역단위 일별 미세먼지 발생 현황 (전라도,광주,제주)</h4>
   <canvas id="myChart4" height="600" width="950"></canvas>
   </div>
    </div>
     </div>
   
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
     var label1 = ['1/13','1/14','1/15','1/16','1/30','2/1','2/2','2/6','2/7','2/11','2/12','2/13','2/14','3/10','3/11','3/14','3/15','3/16','3/17','3/23','3/26','3/29','3/30','3/31','4/16','4/17','4/28','5/7','5/8','5/9','5/24','5/25','11/19','11/20','11/21','12/8','12/15','12/16'];
     
     var data1 = {
       labels: label1,
       datasets: [
    	   {
    	    label: '서울',
    	    backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
            data: [0,1,0,0,0,1,0,2,0,0,4,0,0,3,0,0,2,0,0,0,2,6,1,0,1,0,0,3,2,1,2,0,8,0,0,0,3,0]
          },
          {
      	    label: '경기',
      	    backgroundColor: 'rgba(255, 255, 0, 1)',
              borderColor: 'rgba(255, 255, 0, 1)',
              data: [1,0,0,0,0,6,0,6,1,10,4,0,0,9,6,3,4,6,0,0,10,12,4,0,4,3,0,15,5,4,10,1,28,0,0,0,6,0]
            },
          {
          	 label: '인천',
          	 backgroundColor: 'rgba(255, 51, 255, 1)',
             borderColor: 'rgba(255, 51, 255, 1)',
             data: [2,2,0,0,0,0,0,0,0,0,16,0,2,9,4,0,0,4,0,0,10,12,4,0,4,2,0,12,3,2,8,0,18,2,1,0,12,0]
           },
             {
               label: '세종',
              backgroundColor: 'rgba(0, 255, 0, 1)',
               borderColor: 'rgba(0, 255, 0, 1)',
       
              data: [   0  ,   0   ,0     ,0,     0,     4,     0,    0,   1,     0,    0,     1,    0,      0,    2,     0,      0,     0,     0,     0,      0,    3,     0,     0,     0,     1,     0,    3,    0,   0,     2,     0,      0,    3,     1,      0,     0 ,    2]
               },
          
          ]
       };
     
    

     var config1 = {
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
      config1
    );
   </script>
   
   <script>
     var label2 = ['1/13','1/14','1/15','1/16','1/30','2/1','2/2','2/6','2/7','2/11','2/12','2/13','2/14','3/10','3/11','3/14','3/15','3/16','3/17','3/23','3/26','3/29','3/30','3/31','4/16','4/17','4/28','5/7','5/8','5/9','5/24','5/25','11/19','11/20','11/21','12/8','12/15','12/16'];
     
     var data2 = {
       labels: label2,
       datasets: [
    	   {
    	    label: '충북',
    	    backgroundColor: 'rgba(255, 0, 0, 1)',
            borderColor: 'rgba(255, 0, 0, 1)',
           
   data: [   0  ,   1   ,   0     ,0,     0,     10,     0,    0,   3,     0,    0,     0,    0,      0,    0,     0,      0,     2,     0,     0,      0,    11,     3,     0,     0,     3,     1,    9,    4,   3,     4,     0,      0,    12,     0,      0,     0 ,    0]
              
          },
          {
      	    label: '충남',
      	    backgroundColor: 'rgba(255, 255, 0, 1)',
            borderColor: 'rgba(255, 255, 0, 1)',
              
      data: [   0  ,   1  ,   0     ,0,     0,     8,     0,    0,   2,     5,    4,     0,    0,      8,    2,     2,      0,     4,     0,     0,      2,    9,     3,     0,     0,     3,     0,    11,    4,   3,     6,     0,      4,    3,     2,      0,     3 ,    4]
                
            },
            {
          	    label: '대전',
          	  backgroundColor: 'rgba(255, 51, 255, 1)',
              borderColor: 'rgba(255, 51, 255, 1)',
                 
          data: [   0  ,   0  ,   0     ,1,     0,     6,     0,    0,   0,     0,    0,     0,    0,      0,    0,     0,      0,     0,     0,     0,      0,    7,     3,     0,     0,     2,     2,    6,    2,   2,     4,     0,      0,    0,     0,      0,     0 ,    4]
                    
                },
               
                           
                                                {
                                              	    label: '강원',
                                              	  backgroundColor: 'rgba(0, 255, 0, 1)',
                                                  borderColor: 'rgba(0, 255, 0, 1)',
                                                      
                                              data: [   0 ,   0  ,   0     , 1 ,     0,     2,    0,    4,    1,     0,    0,      0,      0,    0,    0,     0,     0,    1,     0,     4,     0,     14,    1,     0,     4,     2,     0,    12,    0,    4,     6,     1,      0,     3,     0,      0,     0 ,    0]
                                                        
                                                    },
                                                   
           
            
          
          ]
       };
     
    

     var config2 = {
       type: 'bar',
       data: data2,
       options: {
    	   responsive: true,
    	   
       }
       };
     
     
   </script>
   <script>
    var myChart = new Chart(
      document.getElementById('myChart2'),
      config2
    );
   </script>
   
     <script>
     var label1 = ['1/13','1/14','1/15','1/16','1/30','2/1','2/2','2/6','2/7','2/11','2/12','2/13','2/14','3/10','3/11','3/14','3/15','3/16','3/17','3/23','3/26','3/29','3/30','3/31','4/16','4/17','4/28','5/7','5/8','5/9','5/24','5/25','11/19','11/20','11/21','12/8','12/15','12/16'];
     
     var data1 = {
       labels: label1,
       datasets: [
    	   {
         	    label: '대구',
         	    backgroundColor: 'rgba(255, 0, 0, 1)',
                 borderColor: 'rgba(255, 0, 0, 1)',
                 
         data: [   0  ,   0  ,   0     ,1,     0,     0,    1,    0,   0,     0,    0,      0,      0,    0,     0,     0,      0,     1,     0,     1,     0,     5,     1,     0,     0,     1,     0,    3,    2,    0,     0,     0,      0,     0,     2,      0,     0 ,    0]
                   
               },
               {
             	    label: '경북',
             	   backgroundColor: 'rgba(255, 255, 0, 1)',
                   borderColor: 'rgba(255, 255, 0, 1)',
                     
             data: [   0  ,   0  ,   0     ,1,     0,     1,    0,    0,   1,     0,    0,      0,      0,    0,     0,     0,      0,     2,     1,     2,     0,     12,     2,     0,     0,     3,     1,    5,    6,    1,     0,     2,      0,     0,     0,      0,     0 ,    0]
                       
                   },
                   {
                 	    label: '경남',
                 	    backgroundColor: 'rgba(30, 30, 30, 1)',
                         borderColor: 'rgba(30, 30, 30, 1)',
                         
                 data: [   0  ,   0  ,   2     ,4,     0,     8,    2,    0,    0 ,    0,    0,      0,      0,    0,     0,     0,      0,   12,     0,     0,     0,    67,    24,     0,     0,     10,     0,   25,   16,    8,     0,    5,      0,     0,     0,      0,     0 ,    0]
                           
                       },
                       {
                     	    label: '울산',
                     	   backgroundColor: 'rgba(255, 51, 255, 1)',
                           borderColor: 'rgba(255, 51, 255, 1)',
                             
                     data: [   0  ,   0  ,   0     ,0,     0,     0,    0,    0,    0,     0,    0,      0,      0,    0,     0,     0,      0,     0,     0,     1,     0,     6,     1,     0,     0,     1,     0,    0,    2,    0,     0,     0,      0,     0,     0,      0,     0 ,    0]
                               
                           },
                           {
                         	    label: '부산',
                         	   backgroundColor: 'rgba(0, 255, 0, 1)',
                               borderColor: 'rgba(0, 255, 0, 1)',
                                 
                         data: [   3 ,   0  ,   0     ,2,     0,     0,    4,    0,    0,     0,    0,      0,      0,    0,     0,     0,      0,     0,     0,     1,     0,     16,   9,     0,     0,     3,     0,    0,    16,    1,     0,     3,      0,     0,     0,      0,     0 ,    0]
                                   
                               }
          
          ]
       };
     
    

     var config1 = {
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
      config1
    );
   </script>
   
   <script>
     var label1 = ['1/13','1/14','1/15','1/16','1/30','2/1','2/2','2/6','2/7','2/11','2/12','2/13','2/14','3/10','3/11','3/14','3/15','3/16','3/17','3/23','3/26','3/29','3/30','3/31','4/16','4/17','4/28','5/7','5/8','5/9','5/24','5/25','11/19','11/20','11/21','12/8','12/15','12/16'];
     
     var data1 = {
       labels: label1,
       datasets: [
    	   {
         	    label: '전북',
         	    backgroundColor: 'rgba(255, 0, 0, 1)',
                 borderColor: 'rgba(255, 0, 0, 1)',
                 
         data: [   0  ,   0  ,   4     ,0,     2,     12,     0,    0,   2,     0,    0,     4,    0,      3,    2,     0,      0,     2,     0,     0,      0,    9,     2,     0,     0,     3,     4,    11,    4,   3,     4,     0,      0,    6,     0,      1,     3 ,    0]
                   
               },
               {
             	    label: '전남',
             	    backgroundColor: 'rgba(255, 255, 0, 1)',
                     borderColor: 'rgba(255, 255, 0, 1)',
                     
             data: [   0  ,   0  ,   0     ,0,     0,     2,     0,    0,   1,     0,    0,     0,    0,      0,    0,     0,      0,     1,     0,     0,      0,    6,     0,     0,     0,     2,     0,    6,    0,   2,     2,     1,      0,    0,     0,      0,     0 ,    0]
                       
                   },
                   {
                 	    label: '광주',
                 	    backgroundColor: 'rgba(255, 51, 255, 1)',
                         borderColor: 'rgba(255, 51, 255, 1)',
                         
                 data: [   0  ,   0  ,   0     ,0,     0,     2,     0,    0,   1,     0,    0,     0,    0,      0,    0,     0,      0,     0,     0,     0,      0,    6,     1,     0,     0,     1,     2,    4,    2,   1,     0,     0,      1,    0,     3,      0,     0 ,    0]
                           
                       },
                       {
                     	    label: '제주',
                     	    backgroundColor: 'rgba(0, 255, 0, 1)',
                             borderColor: 'rgba(0, 255, 0, 1)',
                            
                     data: [   0 ,   0  ,   0     , 0 ,     0,     0,    1,   0,    2,     0,    0,      0,      0,    0,    0,     0,     0,     0,     0,     0,     0,     4,     2,     1,     0,     1,     0,    3,    1,    1,     0,     0,      0,     0,     0,      0,     0 ,    0]
                               
                           },
          
          ]
       };
     
    

     var config1 = {
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
      config1
    );
   </script>
   </body>
</html>