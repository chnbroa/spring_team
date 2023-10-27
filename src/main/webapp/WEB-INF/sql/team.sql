use webtest;
drop table if exists team;
CREATE TABLE team(
  teamno     INT    				NOT NULL AUTO_INCREMENT COMMENT '팀 번호',
  tname      VARCHAR(30) 		    NOT NULL COMMENT '이름',
  skills     VARCHAR(100)           NOT NULL COMMENT '기술',
  phone      VARCHAR (20)           NOT NULL COMMENT '전화번호',
  address    VARCHAR (20)           COMMENT '주소',
  zipcode    VARCHAR (20)           NOT NULL COMMENT '우편번호',
  gender     VARCHAR (10)           NOT NULL COMMENT '성별',

  rdate 	 DATE NOT NULL, 
  PRIMARY KEY (teamno)  
);

-- create
INSERT INTO team(tname, skills, phone, address, zipcode, gender, rdate)
VALUES('김병찬1', '[java]', '010-1234-5678', '전주시 완산구', '1234' , '남', sysdate());

-- read
select * from team;


-- update
update team
set tname = '병찬'
where teamno = 2;

-- delete
DELETE FROM team
WHERE teamno=1;

-- list(검색, 페이징, 이름, 스킬, 전화번호, 성별)
select * from team;

