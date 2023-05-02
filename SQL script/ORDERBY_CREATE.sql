DROP TABLE "MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "RESERVATION" CASCADE CONSTRAINTS;
DROP TABLE "CAR" CASCADE CONSTRAINTS;
DROP TABLE "NOTICE" CASCADE CONSTRAINTS;
DROP TABLE "MOTOCYCLE" CASCADE CONSTRAINTS;
DROP TABLE "POPQNA" CASCADE CONSTRAINTS;
DROP TABLE "STORE" CASCADE CONSTRAINTS;
DROP TABLE "FNQ" CASCADE CONSTRAINTS;
DROP TABLE "REPLY" CASCADE CONSTRAINTS;
DROP TABLE "LIST" CASCADE CONSTRAINTS;
DROP TABLE "COUPON" CASCADE CONSTRAINTS;
DROP TABLE "COUPON_ISSUE" CASCADE CONSTRAINTS;
DROP TABLE "PFILE" CASCADE CONSTRAINTS;
DROP TABLE "INFOFILE" CASCADE CONSTRAINTS;
DROP TABLE "PAYMENT" CASCADE CONSTRAINTS;
DROP TABLE "TOKEN" CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MEMBER_M_NO;
DROP SEQUENCE SEQ_TOKEN_TK_NO;
DROP SEQUENCE SEQ_REPLY_RP_NO;
DROP SEQUENCE SEQ_CAR_C_NO;
DROP SEQUENCE SEQ_STORE_S_NO;
DROP SEQUENCE SEQ_MOTOCYCLE_MC_NO;
DROP SEQUENCE SEQ_PFILE_PF_NO;
DROP SEQUENCE SEQ_FNQ_F_NO;
DROP SEQUENCE SEQ_NOTICE_N_NO;
DROP SEQUENCE SEQ_INFOFILE_IF_NO;
DROP SEQUENCE SEQ_PAYMENT_P_NO;
DROP SEQUENCE SEQ_RESERVATION_R_NO;
DROP SEQUENCE SEQ_POPQNA_POP_NO;
DROP SEQUENCE SEQ_COUPON_CO_NUMBER;
DROP SEQUENCE SEQ_COUPON_ISSUE_CI_NUMBER;

CREATE TABLE "MEMBER" (
	"M_NO"	NUMBER		NOT NULL,
	"M_ID"	VARCHAR2(100)		NOT NULL,
	"M_PASSWORD"	VARCHAR2(300)		NOT NULL,
	"M_NAME"	VARCHAR2(50)		NOT NULL,
	"M_BIRTH"	VARCHAR2(50)		NOT NULL,
	"M_EMAIL"	VARCHAR2(200)		NOT NULL,
	"M_PHONE"	VARCHAR2(50)		NOT NULL,
	"M_GENDER"	VARCHAR2(10)		NOT NULL,
	"M_ADDRESS"	VARCHAR2(300)		NOT NULL,
	"M_DETAIL_ADD"	VARCHAR2(200)		NOT NULL,
	"M_POINT"	NUMBER	DEFAULT 0	NOT NULL,
	"M_ROLE"	VARCHAR2(50)	DEFAULT 'B'	NOT NULL,
	"M_ENROLL_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"M_MODIFY_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"M_STATUS"	VARCHAR2(10)	DEFAULT 'Y'	NOT NULL,
	"M_CNUM"	NUMBER	DEFAULT 0	NULL,
	"M_PCOUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"M_VERIFIED"	VARCHAR2(5)	DEFAULT 'Y'	NULL
);

COMMENT ON COLUMN "MEMBER"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "MEMBER"."M_ID" IS '회원 아이디(PK)';

COMMENT ON COLUMN "MEMBER"."M_PASSWORD" IS '회원 비밀번호';

COMMENT ON COLUMN "MEMBER"."M_NAME" IS '가입자 이름';

COMMENT ON COLUMN "MEMBER"."M_BIRTH" IS '가입자 생년월일 8글자';

COMMENT ON COLUMN "MEMBER"."M_EMAIL" IS '가입자 이메일';

COMMENT ON COLUMN "MEMBER"."M_PHONE" IS '가입자 전화번호';

COMMENT ON COLUMN "MEMBER"."M_GENDER" IS '가입자 성별(여자,남자)';

COMMENT ON COLUMN "MEMBER"."M_ADDRESS" IS '가입자 주소';

COMMENT ON COLUMN "MEMBER"."M_DETAIL_ADD" IS '가입자 상세주소';

COMMENT ON COLUMN "MEMBER"."M_POINT" IS '회원 보유 포인트';

COMMENT ON COLUMN "MEMBER"."M_ROLE" IS '회원등급(BSGD + M(관리자))';

COMMENT ON COLUMN "MEMBER"."M_ENROLL_DATE" IS '가입일자';

COMMENT ON COLUMN "MEMBER"."M_MODIFY_DATE" IS '정보 수정일자';

COMMENT ON COLUMN "MEMBER"."M_STATUS" IS 'N은 탈퇴상태';

COMMENT ON COLUMN "MEMBER"."M_CNUM" IS '인증번호';

COMMENT ON COLUMN "MEMBER"."M_PCOUNT" IS '회원결제횟수';

COMMENT ON COLUMN "MEMBER"."M_VERIFIED" IS '인증됨Y 안됨N';

CREATE TABLE "RESERVATION" (
	"R_NO"	NUMBER		NOT NULL,
	"RENT_DATE"	DATE		NOT NULL,
	"RETURN_DATE"	DATE		NOT NULL,
	"S_NO"	NUMBER		NOT NULL,
	"C_NO"	NUMBER		NULL,
	"MC_NO"	NUMBER		NULL,
	"R_STATUS"	VARCHAR2(4)	DEFAULT 'Y'	NOT NULL,
	"P_UID"	VARCHAR2(50)		NOT NULL,
	"M_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "RESERVATION"."R_NO" IS '예약번호';

COMMENT ON COLUMN "RESERVATION"."RENT_DATE" IS '대여일시';

COMMENT ON COLUMN "RESERVATION"."RETURN_DATE" IS '반납일시';

COMMENT ON COLUMN "RESERVATION"."S_NO" IS '지점';

COMMENT ON COLUMN "RESERVATION"."C_NO" IS '대여한 차';

COMMENT ON COLUMN "RESERVATION"."MC_NO" IS '대여한 오토바이';

COMMENT ON COLUMN "RESERVATION"."R_STATUS" IS '결제 상태';

COMMENT ON COLUMN "RESERVATION"."P_UID" IS '예약 코드';

COMMENT ON COLUMN "RESERVATION"."M_NO" IS '회원 SEQ';

CREATE TABLE "CAR" (
	"C_NO"	NUMBER		NOT NULL,
	"C_NAME"	VARCHAR2(50)		NOT NULL,
	"C_MILE"	VARCHAR2(10)		NOT NULL,
	"C_KM"	NUMBER		NOT NULL,
	"C_CC"	NUMBER		NOT NULL,
	"C_YEAR"	NUMBER		NOT NULL,
	"C_ENGINE"	VARCHAR2(20)		NOT NULL,
	"C_BRAND"	VARCHAR2(20)		NOT NULL,
	"C_FUEL"	VARCHAR2(50)		NOT NULL,
	"C_PRICE"	NUMBER		NOT NULL,
	"C_POSITION"	VARCHAR2(30)		NOT NULL,
	"C_STATUS"	VARCHAR2(4)	DEFAULT 'Y'	NOT NULL,
	"C_SALE"	VARCHAR2(10)	DEFAULT 'C'	NOT NULL,
	"S_NO"	NUMBER		NOT NULL,
	"C_COUNT"	NUMBER		NOT NULL,
	"C_ENROLL_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"PF_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CAR"."C_NO" IS '차량 SEQ';

COMMENT ON COLUMN "CAR"."C_NAME" IS '자동차 이름';

COMMENT ON COLUMN "CAR"."C_MILE" IS '차량연비(복합 차량연비)';

COMMENT ON COLUMN "CAR"."C_KM" IS '차량 주행거리(KM)';

COMMENT ON COLUMN "CAR"."C_CC" IS '차량 배기(CC)';

COMMENT ON COLUMN "CAR"."C_YEAR" IS '차량 연식';

COMMENT ON COLUMN "CAR"."C_ENGINE" IS '차량별 엔진';

COMMENT ON COLUMN "CAR"."C_BRAND" IS '차량 브랜드명';

COMMENT ON COLUMN "CAR"."C_FUEL" IS '전기, 가솔린, 하이브리드';

COMMENT ON COLUMN "CAR"."C_PRICE" IS '하루 차량가격';

COMMENT ON COLUMN "CAR"."C_POSITION" IS '차량위치 매장FK';

COMMENT ON COLUMN "CAR"."C_STATUS" IS '차량삭제시 N으로';

COMMENT ON COLUMN "CAR"."C_SALE" IS 'C일반 S특가 (특가상품)';

COMMENT ON COLUMN "CAR"."S_NO" IS 'SEQ';

COMMENT ON COLUMN "CAR"."C_COUNT" IS '차량 대여횟수';

COMMENT ON COLUMN "CAR"."C_ENROLL_DATE" IS '차량 등록날짜';

COMMENT ON COLUMN "CAR"."PF_NO" IS '상품파일 SEQ';

CREATE TABLE "NOTICE" (
	"N_NO"	NUMBER		NOT NULL,
	"N_TITLE"	VARCHAR2(50)		NOT NULL,
	"N_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"N_RE_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"N_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"N_VIEW"	NUMBER		NOT NULL,
	"N_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NULL,
	"M_NO"	NUMBER		NOT NULL,
	"IF_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "NOTICE"."N_NO" IS '공지사항 SEQ';

COMMENT ON COLUMN "NOTICE"."N_TITLE" IS '공지사항 제목';

COMMENT ON COLUMN "NOTICE"."N_DATE" IS '공시사항 작성날짜';

COMMENT ON COLUMN "NOTICE"."N_RE_DATE" IS '공지사항 수정날짜';

COMMENT ON COLUMN "NOTICE"."N_CONTENT" IS '공지사항 내용';

COMMENT ON COLUMN "NOTICE"."N_VIEW" IS '조회수';

COMMENT ON COLUMN "NOTICE"."N_STATUS" IS '공지사항 상태여부';

COMMENT ON COLUMN "NOTICE"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "NOTICE"."IF_NO" IS '파일번호(SEQ)';

CREATE TABLE "MOTOCYCLE" (
	"MC_NO"	NUMBER		NOT NULL,
	"MC_NAME"	VARCHAR2(50)		NOT NULL,
	"MC_BRAND"	VARCHAR2(20)		NOT NULL,
	"MC_ENGINE"	VARCHAR2(50)		NOT NULL,
	"MC_CC"	NUMBER		NOT NULL,
	"MC_OUTPUT"	NUMBER		NOT NULL,
	"MC_TORQUE"	NUMBER		NOT NULL,
	"MC_FUEL"	NUMBER		NOT NULL,
	"MC_YEAR"	NUMBER		NOT NULL,
	"MC_KM"	NUMBER		NOT NULL,
	"MC_PRICE"	NUMBER		NOT NULL,
	"MC_POSITION"	VARCHAR2(50)		NOT NULL,
	"MC_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	"MC_SALE"	VARCHAR2(10)	DEFAULT 'C'	NOT NULL,
	"S_NO"	NUMBER		NOT NULL,
	"MC_COUNT"	NUMBER		NOT NULL,
	"MC_ENROLL_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"PF_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "MOTOCYCLE"."MC_NO" IS '오토바이 SEQ';

COMMENT ON COLUMN "MOTOCYCLE"."MC_NAME" IS '오토바이명';

COMMENT ON COLUMN "MOTOCYCLE"."MC_BRAND" IS '오토바이 브랜드명';

COMMENT ON COLUMN "MOTOCYCLE"."MC_ENGINE" IS '오토바이 엔진형식';

COMMENT ON COLUMN "MOTOCYCLE"."MC_CC" IS '오토바이 배기량';

COMMENT ON COLUMN "MOTOCYCLE"."MC_OUTPUT" IS '오토바이 출력';

COMMENT ON COLUMN "MOTOCYCLE"."MC_TORQUE" IS '오토바이 토크';

COMMENT ON COLUMN "MOTOCYCLE"."MC_FUEL" IS '오토바이 연료탱크';

COMMENT ON COLUMN "MOTOCYCLE"."MC_YEAR" IS '오토바이 연식';

COMMENT ON COLUMN "MOTOCYCLE"."MC_KM" IS '주행거리';

COMMENT ON COLUMN "MOTOCYCLE"."MC_PRICE" IS '오토바이 가격';

COMMENT ON COLUMN "MOTOCYCLE"."MC_POSITION" IS '지점위치';

COMMENT ON COLUMN "MOTOCYCLE"."MC_STATUS" IS '차량보유상태값';

COMMENT ON COLUMN "MOTOCYCLE"."MC_SALE" IS 'C일반 S특가 (특가상품)';

COMMENT ON COLUMN "MOTOCYCLE"."S_NO" IS 'SEQ';

COMMENT ON COLUMN "MOTOCYCLE"."MC_COUNT" IS '오토바이 대여횟수';

COMMENT ON COLUMN "MOTOCYCLE"."MC_ENROLL_DATE" IS '오토바이 등록날짜';

COMMENT ON COLUMN "MOTOCYCLE"."PF_NO" IS '상품파일SEQ';

CREATE TABLE "POPQNA" (
	"POP_NO"	NUMBER		NOT NULL,
	"POP_NAME"	VARCHAR2(20)		NOT NULL,
	"POP_EMAIL"	VARCHAR2(200)		NOT NULL,
	"POP_PHONE"	VARCHAR2(50)		NOT NULL,
	"POP_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"POP_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"POP_STATUS"	VARCHAR2(20)	DEFAULT '답변대기'	NOT NULL
);

COMMENT ON COLUMN "POPQNA"."POP_NO" IS 'SEQ(PK)';

COMMENT ON COLUMN "POPQNA"."POP_NAME" IS '문의자 이름';

COMMENT ON COLUMN "POPQNA"."POP_EMAIL" IS '문의자 이메일';

COMMENT ON COLUMN "POPQNA"."POP_PHONE" IS '문의자 연락처';

COMMENT ON COLUMN "POPQNA"."POP_CONTENT" IS '문의 내용';

COMMENT ON COLUMN "POPQNA"."POP_DATE" IS '문의 작성일자';

COMMENT ON COLUMN "POPQNA"."POP_STATUS" IS '답변대기 답변완료';

CREATE TABLE "STORE" (
	"S_NO"	NUMBER		NOT NULL,
	"S_NAME"	VARCHAR2(50)		NOT NULL,
	"S_COUNT"	NUMBER		NOT NULL,
	"S_LOCATION"	VARCHAR2(10)		NOT NULL,
	"S_ADDRESS"	VARCHAR2(100)		NOT NULL,
	"S_LAT"	VARCHAR2(30)		NOT NULL,
	"S_LONG"	VARCHAR2(30)		NOT NULL,
	"S_STATUS"	VARCHAR2(10)	DEFAULT 'Y'	NOT NULL
);

COMMENT ON COLUMN "STORE"."S_NO" IS '매장 SEQ';

COMMENT ON COLUMN "STORE"."S_NAME" IS '매장이름(서울1번)';

COMMENT ON COLUMN "STORE"."S_COUNT" IS '현재 매장 차량수';

COMMENT ON COLUMN "STORE"."S_LOCATION" IS '큰 분류 (서울 대전 등)';

COMMENT ON COLUMN "STORE"."S_ADDRESS" IS '서울이면 구 동';

COMMENT ON COLUMN "STORE"."S_LAT" IS '위도';

COMMENT ON COLUMN "STORE"."S_LONG" IS '경도';

COMMENT ON COLUMN "STORE"."S_STATUS" IS '지역의 상태값';

CREATE TABLE "FNQ" (
	"F_NO"	NUMBER		NOT NULL,
	"F_TITLE"	VARCHAR2(50)		NOT NULL,
	"F_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"F_RE_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"F_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"F_VIEW"	NUMBER		NOT NULL,
	"F_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NULL
);

COMMENT ON COLUMN "FNQ"."F_NO" IS 'SEQ';

COMMENT ON COLUMN "FNQ"."F_TITLE" IS '자묻질 제목';

COMMENT ON COLUMN "FNQ"."F_DATE" IS '자묻질 등록날짜';

COMMENT ON COLUMN "FNQ"."F_RE_DATE" IS '정날짜';

COMMENT ON COLUMN "FNQ"."F_VIEW" IS '자묻질 조회수';

COMMENT ON COLUMN "FNQ"."F_STATUS" IS '자묻질 상태';

CREATE TABLE "REPLY" (
	"RP_NO"	NUMBER		NOT NULL,
	"M_NO"	NUMBER		NOT NULL,
	"CONTENT"	VARCHAR2(1000)		NOT NULL,
	"CAREATE_DATE"	DATE		NOT NULL,
	"MODIFY_DATE"	DATE		NULL,
	"R_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	"MC_NO"	NUMBER		NULL,
	"C_NO"	NUMBER		NULL
);

COMMENT ON COLUMN "REPLY"."RP_NO" IS '댓글번호';

COMMENT ON COLUMN "REPLY"."M_NO" IS '회원번호';

COMMENT ON COLUMN "REPLY"."CONTENT" IS '댓글내용';

COMMENT ON COLUMN "REPLY"."CAREATE_DATE" IS '댓글작성날짜';

COMMENT ON COLUMN "REPLY"."MODIFY_DATE" IS '댓글수정날짜';

COMMENT ON COLUMN "REPLY"."R_STATUS" IS '삭제시 N으로';

COMMENT ON COLUMN "REPLY"."MC_NO" IS '오토바이 SEQ';

COMMENT ON COLUMN "REPLY"."C_NO" IS '차량 SEQ';

CREATE TABLE "LIST" (
	"M_NO"	NUMBER		NOT NULL,
	"L_ID"	VARCHAR(20)		NOT NULL,
	"L_CAR"	NUMBER		NOT NULL,
	"L_MC"	NUMBER		NOT NULL,
	"L_PR"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "LIST"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "LIST"."L_ID" IS '회원 아이디';

COMMENT ON COLUMN "LIST"."L_CAR" IS '차량 번호';

COMMENT ON COLUMN "LIST"."L_MC" IS '오토바이 번호';

COMMENT ON COLUMN "LIST"."L_PR" IS '대여 가격';

CREATE TABLE "COUPON_ISSUE" (
	"CI_NUMBER"	NUMBER		NOT NULL,
	"CO_NUMBER"	NUMBER		NULL,
	"M_NO"	NUMBER		NOT NULL,
	"CI_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NOT NULL,
	"CI_REGI"	DATE		NOT NULL
);

COMMENT ON COLUMN "COUPON_ISSUE"."CI_NUMBER" IS '쿠폰 이슈 번호';

COMMENT ON COLUMN "COUPON_ISSUE"."CO_NUMBER" IS '쿠폰 번호';

COMMENT ON COLUMN "COUPON_ISSUE"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "COUPON_ISSUE"."CI_STATUS" IS '쿠폰 사용 여부';

COMMENT ON COLUMN "COUPON_ISSUE"."CI_REGI" IS '쿠폰 등록일';

CREATE TABLE "PFILE" (
	"PF_NO"	NUMBER		NOT NULL,
	"PF_CATE"	VARCHAR2(5)		NOT NULL,
	"PF_NAME"	VARCHAR2(500)		NOT NULL,
	"PF_ENROLL"	DATE	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN "PFILE"."PF_NO" IS '상품파일 SEQ';

COMMENT ON COLUMN "PFILE"."PF_CATE" IS '1차 2오토바이';

COMMENT ON COLUMN "PFILE"."PF_NAME" IS '파일이름';

COMMENT ON COLUMN "PFILE"."PF_ENROLL" IS '파일생성일자';

CREATE TABLE "INFOFILE" (
	"IF_NO"	NUMBER		NOT NULL,
	"IF_ID"	VARCHAR2(5)		NOT NULL,
	"IF_TYPE"	VARCHAR2(100)		NOT NULL,
	"IF_NAME"	VARCHAR2(500)		NOT NULL,
	"IF_ENROLL"	DATE	DEFAULT SYSDATE	NOT NULL,
	"M_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "INFOFILE"."IF_NO" IS '정보파일 SEQ';

COMMENT ON COLUMN "INFOFILE"."IF_ID" IS '3면허증 4공지사항';

COMMENT ON COLUMN "INFOFILE"."IF_TYPE" IS '파일타입(확장자)';

COMMENT ON COLUMN "INFOFILE"."IF_NAME" IS '파일이름';

COMMENT ON COLUMN "INFOFILE"."IF_ENROLL" IS '파일생성일자';

COMMENT ON COLUMN "INFOFILE"."M_NO" IS '회원 SEQ';

CREATE TABLE "PAYMENT" (
	"P_NO"	NUMBER		NOT NULL,
	"P_UID"	VARCHAR2(50)		NOT NULL,
	"P_NAME"	VARCHAR2(200)		NOT NULL,
	"P_METHOD"	VARCHAR2(100)		NOT NULL,
	"P_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"P_TOT_PRICE"	NUMBER		NOT NULL,
	"P_FIN_PRICE"	NUMBER		NOT NULL,
	"P_STATUS"	VARCHAR2(1)	DEFAULT 'N'	NOT NULL,
	"M_NO"	NUMBER		NOT NULL,
	"C_NO"	NUMBER		NULL,
	"MC_NO"	NUMBER		NULL
);

COMMENT ON COLUMN "PAYMENT"."P_NO" IS '결제 SEQ';

COMMENT ON COLUMN "PAYMENT"."P_UID" IS '주문 번호';

COMMENT ON COLUMN "PAYMENT"."P_NAME" IS '상품 이름';

COMMENT ON COLUMN "PAYMENT"."P_METHOD" IS '결제 방법';

COMMENT ON COLUMN "PAYMENT"."P_DATE" IS '결제 시간';

COMMENT ON COLUMN "PAYMENT"."P_TOT_PRICE" IS '전체 가격';

COMMENT ON COLUMN "PAYMENT"."P_FIN_PRICE" IS '최종 가격';

COMMENT ON COLUMN "PAYMENT"."P_STATUS" IS '결제 상태';

COMMENT ON COLUMN "PAYMENT"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "PAYMENT"."C_NO" IS '자동차 SEQ';

COMMENT ON COLUMN "PAYMENT"."MC_NO" IS '오토바이 SEQ';

CREATE TABLE "TOKEN" (
	"TK_NO"	NUMBER		NOT NULL,
	"M_NO"	NUMBER		NOT NULL,
	"TK_EMAIL"	VARCHAR2(200)		NOT NULL,
	"TK_TOKEN"	VARCHAR2(200)		NOT NULL,
	"TK_AUTH"	NUMBER	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN "TOKEN"."TK_NO" IS '토큰번호 SEQ';

COMMENT ON COLUMN "TOKEN"."M_NO" IS '회원 SEQ';

COMMENT ON COLUMN "TOKEN"."TK_EMAIL" IS '인증할 이메일';

COMMENT ON COLUMN "TOKEN"."TK_TOKEN" IS '인증토큰(랜덤난수)';

COMMENT ON COLUMN "TOKEN"."TK_AUTH" IS '0안인증 1인증';

CREATE TABLE "COUPON" (
	"CO_NUMBER"	NUMBER		NULL,
	"CO_NAME"	VARCHAR2(500)		NULL,
	"CO_STATUS"	VARCHAR2(3)	DEFAULT 'Y'	NOT NULL,
	"CO_PERCENT"	NUMBER		NULL,
	"CO_CDATE"	DATE		NOT NULL,
	"CO_PERIOD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "COUPON"."CO_NUMBER" IS '쿠폰 번호';

COMMENT ON COLUMN "COUPON"."CO_NAME" IS '쿠폰 이름';

COMMENT ON COLUMN "COUPON"."CO_STATUS" IS '쿠폰 활성 상태';

COMMENT ON COLUMN "COUPON"."CO_PERCENT" IS '할인율';

COMMENT ON COLUMN "COUPON"."CO_CDATE" IS '쿠폰 생성일';

COMMENT ON COLUMN "COUPON"."CO_PERIOD" IS '쿠폰 발행 기간';





ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"M_NO"
);

ALTER TABLE "RESERVATION" ADD CONSTRAINT "PK_RESERVATION" PRIMARY KEY (
	"R_NO"
);

ALTER TABLE "RESERVATION" ADD CONSTRAINT "UQ_RESERVATION" UNIQUE (
	"P_UID"
);

ALTER TABLE "CAR" ADD CONSTRAINT "PK_CAR" PRIMARY KEY (
	"C_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"N_NO"
);

ALTER TABLE "MOTOCYCLE" ADD CONSTRAINT "PK_MOTOCYCLE" PRIMARY KEY (
	"MC_NO"
);

ALTER TABLE "POPQNA" ADD CONSTRAINT "PK_POPQNA" PRIMARY KEY (
	"POP_NO"
);

ALTER TABLE "STORE" ADD CONSTRAINT "PK_STORE" PRIMARY KEY (
	"S_NO"
);

ALTER TABLE "FNQ" ADD CONSTRAINT "PK_FNQ" PRIMARY KEY (
	"F_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY (
	"RP_NO"
);

ALTER TABLE "LIST" ADD CONSTRAINT "PK_LIST" PRIMARY KEY (
	"M_NO"
);

ALTER TABLE "COUPON_ISSUE" ADD CONSTRAINT "PK_COUPON_ISSUE" PRIMARY KEY (
	"CI_NUMBER"
);

ALTER TABLE "PFILE" ADD CONSTRAINT "PK_PFILE" PRIMARY KEY (
	"PF_NO"
);

ALTER TABLE "INFOFILE" ADD CONSTRAINT "PK_INFOFILE" PRIMARY KEY (
	"IF_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY (
	"P_NO"
);

ALTER TABLE "TOKEN" ADD CONSTRAINT "PK_TOKEN" PRIMARY KEY (
	"TK_NO",
	"M_NO"
);

ALTER TABLE "COUPON" ADD CONSTRAINT "PK_COUPON" PRIMARY KEY (
	"CO_NUMBER"
);

ALTER TABLE "CAR" ADD CONSTRAINT "FK_STORE_TO_CAR_1" FOREIGN KEY (
	"S_NO"
)
REFERENCES "STORE" (
	"S_NO"
);

ALTER TABLE "CAR" ADD CONSTRAINT "FK_PFILE_TO_CAR_1" FOREIGN KEY (
	"PF_NO"
)
REFERENCES "PFILE" (
	"PF_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_MEMBER_TO_NOTICE_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_INFOFILE_TO_NOTICE_1" FOREIGN KEY (
	"IF_NO"
)
REFERENCES "INFOFILE" (
	"IF_NO"
);

ALTER TABLE "MOTOCYCLE" ADD CONSTRAINT "FK_STORE_TO_MOTOCYCLE_1" FOREIGN KEY (
	"S_NO"
)
REFERENCES "STORE" (
	"S_NO"
);

ALTER TABLE "MOTOCYCLE" ADD CONSTRAINT "FK_PFILE_TO_MOTOCYCLE_1" FOREIGN KEY (
	"PF_NO"
)
REFERENCES "PFILE" (
	"PF_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "FK_MOTOCYCLE_TO_REPLY_1" FOREIGN KEY (
	"MC_NO"
)
REFERENCES "MOTOCYCLE" (
	"MC_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "FK_CAR_TO_REPLY_1" FOREIGN KEY (
	"C_NO"
)
REFERENCES "CAR" (
	"C_NO"
);

ALTER TABLE "LIST" ADD CONSTRAINT "FK_MEMBER_TO_LIST_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "COUPON_ISSUE" ADD CONSTRAINT "FK_COUPON_TO_COUPON_ISSUE_1" FOREIGN KEY (
	"CO_NUMBER"
)
REFERENCES "COUPON" (
	"CO_NUMBER"
);

ALTER TABLE "COUPON_ISSUE" ADD CONSTRAINT "FK_MEMBER_TO_COUPON_ISSUE_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "INFOFILE" ADD CONSTRAINT "FK_MEMBER_TO_INFOFILE_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_MEMBER_TO_PAYMENT_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_CAR_TO_PAYMENT_1" FOREIGN KEY (
	"C_NO"
)
REFERENCES "CAR" (
	"C_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_MOTOCYCLE_TO_PAYMENT_1" FOREIGN KEY (
	"MC_NO"
)
REFERENCES "MOTOCYCLE" (
	"MC_NO"
);

ALTER TABLE "TOKEN" ADD CONSTRAINT "FK_MEMBER_TO_TOKEN_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);



CREATE SEQUENCE SEQ_MEMBER_M_NO;
CREATE SEQUENCE SEQ_TOKEN_TK_NO;
CREATE SEQUENCE SEQ_REPLY_RP_NO;
CREATE SEQUENCE SEQ_CAR_C_NO;
CREATE SEQUENCE SEQ_STORE_S_NO;
CREATE SEQUENCE SEQ_MOTOCYCLE_MC_NO;
CREATE SEQUENCE SEQ_PFILE_PF_NO;
CREATE SEQUENCE SEQ_FNQ_F_NO;
CREATE SEQUENCE SEQ_NOTICE_N_NO;
CREATE SEQUENCE SEQ_INFOFILE_IF_NO;
CREATE SEQUENCE SEQ_PAYMENT_P_NO;
CREATE SEQUENCE SEQ_RESERVATION_R_NO;
CREATE SEQUENCE SEQ_POPQNA_POP_NO;
CREATE SEQUENCE SEQ_COUPON_CO_NUMBER;
CREATE SEQUENCE SEQ_COUPON_ISSUE_CI_NUMBER;
