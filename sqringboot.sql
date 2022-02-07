[1. 전국단위 월별 미세먼지 경보 현황]
select * from result1;

[2. 전국단위 일별 미세먼지 경보 현황]
select * from result2;

[3. 전국단위 시간별 미세먼지 경보 현황]
select * from result3;

[4. 지역단위 월별 미세먼지 경보 현황
select * from result4;

[5. 지역단위 일별 미세먼지 경보 현황]
select * from result5 order by districtNo, districtName, Month;

[6. 지역단위 시간별 미세먼지 경보 현황]
select * from result6 order by districtNo, issueTime;

[7. 권역단위 서울 미세먼지 경보 현황]
7_1. 월별 select * from result7_1;
7_2. 일별 select * from result7_2;
7_3. 시간별 select * from result7_3 order by issueTime;
[8. 권역단위 경기 미세먼지 경보 현황]
8_1. 월별 select * from result8_1;
8_2. 일별 select * from result8_2;
8_3. 시간별 select * from result8_3 order by moveName, issueTime;
[9. 권역단위 인천 미세먼지 경보 현황]
9_1. 월별 select * from result9_1;
9_2. 일별 select * from result9_2 order by moveName, Month;
9_3. 시간별 select * from result9_3 order by moveName, issueTime;
[10. 권역단위 세종 미세먼지 경보 현황]
10_1. 월별 select * from result10_1;
10_2. 일별 select * from result10_2 order by moveName, Month
10_3. 시간별 select * from result10_3 order by moveName, issueTime;
[11. 권역단위 충북 미세먼지 경보 현황]
11_1. 월별 select * from result11_1;
11_2. 일별 select * from result11_2 order by moveName, Month
11_3. 시간별 select * from result11_3 order by moveName, issueTime;
[12. 권역단위 충남 미세먼지 경보 현황]
12_1. 월별 select * from result12_1;
12_2. 일별 select * from result12_2 order by moveName, Month
12_3. 시간별 select * from result12_3 order by moveName, issueTime;
[13. 권역단위 대전 미세먼지 경보 현황]
13_1. 월별 select * from result13_1;
13_2. 일별 select * from result13_2 order by moveName, Month
13_3. 시간별 select * from result13_3 order by moveName, issueTime;
[14. 권역단위 전북 미세먼지 경보 현황]
14_1. 월별 select * from result14_1;
14_2. 일별 select * from result14_2 order by moveName, Month
14_3. 시간별 select * from result14_3 order by moveName, issueTime;
[15. 권역단위 전남 미세먼지 경보 현황]
15_1. 월별 select * from result15_1;
15_2. 일별 select * from result15_2 order by moveName, Month
15_3. 시간별 select * from result15_3 order by moveName, issueTime;
[16. 권역단위 광주 미세먼지 경보 현황]
16_1. 월별 select * from result16_1;
16_2. 일별 select * from result16_2 order by moveName, Month
16_3. 시간별 select * from result16_3 order by moveName, issueTime;
[17. 권역단위 대구 미세먼지 경보 현황]
17_1. 월별 select * from result17_1;
17_2. 일별 select * from result17_2 order by moveName, Month
17_3. 시간별 select * from result17_3 order by moveName, issueTime;
[18. 권역단위 경북 미세먼지 경보 현황]
18_1. 월별 select * from result18_1;
18_2. 일별 select * from result18_2 order by moveName, Month
18_3. 시간별 select * from result18_3 order by moveName, issueTime;
[19. 권역단위 경남 미세먼지 경보 현황]
19_1. 월별 select * from result19_1;
19_2. 일별 select * from result19_2 order by moveName, Month
19_3. 시간별 select * from result19_3 order by moveName, issueTime;
[20. 권역단위 울산 미세먼지 경보 현황]
20_1. 월별 select * from result20_1;
20_2. 일별 select * from result20_2 order by moveName, Month
20_3. 시간별 select * from result20_3 order by moveName, issueTime;
[21. 권역단위 부산 미세먼지 경보 현황]
21_1. 월별 select * from result21_1;
21_2. 일별 select * from result21_2 order by moveName, Month
21_3. 시간별 select * from result21_3 order by moveName, issueTime;
[22. 권역단위 강원 미세먼지 경보 현황]
22_1. 월별 select * from result22_1;
22_2. 일별 select * from result22_2 order by moveName, Month
22_3. 시간별 select * from result22_3 order by moveName, issueTime;
[23. 권역단위 제주 미세먼지 경보 현황]
23_1. 월별 select * from result23_1;
23_2. 일별 select * from result23_2 order by moveName, Month
23_3. 시간별 select * from result23_3 order by moveName, issueTime;