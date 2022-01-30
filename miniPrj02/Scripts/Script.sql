drop table member;

CREATE TABLE member (
	memName varchar(20) NOT null,
	memId varchar(100) NOT null primary KEY,
	memPwd varchar(32) NOT NULL,
	memBirth varchar(8) not null,
	memAddr varchar(6) NOT NULL,
	memGender enum('M','F','U') not NULL default 'U',
	memPhone varchar(12) DEFAULT NULL,
	memStatus enum('Y','N','D') NOT NULL default 'Y',
	memRegtime timestamp default CURRENT_TIMESTAMP
);

insert into member values
('±Ëµø¡÷','dongzoo','1111',19920526,'∞Ê±‚µµ','M','01076492459','Y',now());
insert into member values
('±Ë¡ˆ»∆','wlgnsl','2222',19900123,'∞Ê±‚µµ','M','01023164227','Y',now());
insert into member values
('¿±∞Ê√µ','kych','3333',19970123,'¿Œ√µ','M','01047647905','Y',now());
insert into member values
('¿Ã±§»∆','lkhun','4444',19931111,'º≠øÔ','M','01028804839','Y',now());

select * from member;