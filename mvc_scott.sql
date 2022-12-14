select user
from dual;
--SCOTT

--MVC03=========================================================================

DROP TABLE TBL_MEMBERLIST;
--Table TBL_MEMBERLIST이(가) 삭제되었습니다.

-- MAKE TABLE (TBL_MEMBERLIST)
CREATE TABLE TBL_MEMBERLIST
( MID       NUMBER 
, NAME      VARCHAR2(30)
, TELEPHONE VARCHAR2(50)
, CONSTRAINT MEMBERLIST_MID_PK PRIMARY KEY(MID)
);
--Table TBL_MEMBERLIST이(가) 생성되었습니다.


-- MEMBERLISTSEQ
CREATE SEQUENCE MEMBERLISTSEQ
NOCACHE;
--Sequence MEMBERLISTSEQ이(가) 생성되었습니다.

INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '가나다', '010-1234-1234');

--한 줄 구성
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE) VALUES(MEMBERLISTSEQ.NEXTVAL, '가나다', '010-1234-1234')
;
--1 행 이(가) 삽입되었습니다.


SELECT *
FROM TBL_MEMBERLIST;
--1	가나다	010-1234-1234


ROLLBACK;
--롤백 완료.

COMMIT;
--커밋 완료.

--리스트 조회 쿼리문 구성
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
ORDER BY MID;

--한 줄 구성
SELECT MID, NAME, TELEPHONE FROM TBL_MEMBERLIST ORDER BY MID
;


-- 인원 수 조회 쿼리문 구성
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBERLIST;

-- 한 줄 구성
SELECT COUNT(*) AS COUNT FROM TBL_MEMBERLIST
;


--==============================================================================












