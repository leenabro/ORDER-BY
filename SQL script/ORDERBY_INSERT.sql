-- 테스트 멤버 INSERT 문
INSERT INTO MEMBER (
    M_NO, 
    M_ID, 
    M_PASSWORD, 
    M_NAME, 
    M_BIRTH, 
    M_EMAIL, 
    M_PHONE, 
    M_GENDER, 
    M_ADDRESS, 
    M_DETAIL_ADD, 
    M_POINT, M_ROLE, 
    M_ENROLL_DATE, 
    M_MODIFY_DATE, 
    M_STATUS, 
    M_CNUM, 
    M_PCOUNT)
VALUES (
    SEQ_MEMBER_M_NO.NEXTVAL, 
    'TEST', '$2a$10$tQ7jxV2b63HE7rnV7ePm3OcqS6v.jklc0.gY16HstiP20InwobqAK', 
    '테스트', 
    SYSDATE, 
    'orderby@orderby.com', 
    '010-0000-0000', 
    '남자', 
    '서울시 송파구 잠실동 잠실 아파트', 
    '101동 1001호', 
    DEFAULT, 
    'B', 
    SYSDATE, 
    SYSDATE, 
    DEFAULT, 
    DEFAULT, 
    DEFAULT
);

INSERT INTO MEMBER (
    M_NO, 
    M_ID, 
    M_PASSWORD, 
    M_NAME, 
    M_BIRTH, 
    M_EMAIL, 
    M_PHONE, 
    M_GENDER, 
    M_ADDRESS, 
    M_DETAIL_ADD, 
    M_POINT, M_ROLE, 
    M_ENROLL_DATE, 
    M_MODIFY_DATE, 
    M_STATUS, 
    M_CNUM, 
    M_PCOUNT)
VALUES (
    SEQ_MEMBER_M_NO.NEXTVAL, 
    'TEST2', '$2a$10$tQ7jxV2b63HE7rnV7ePm3OcqS6v.jklc0.gY16HstiP20InwobqAK', 
    '이몽룡', 
    SYSDATE, 
    'orderby@naver.com', 
    '010-1111-2222', 
    '남자', 
    '서울시 성동구 성수동 아파트', 
    '1001동 1001호', 
    DEFAULT, 
    'G', 
    SYSDATE, 
    SYSDATE, 
    DEFAULT, 
    DEFAULT, 
    DEFAULT
);

-- PRODUCT FILE 데이터 INSERT
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    1,
    '1',
    '보트테일.png',
    DEFAULT
);

INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    2,
    '1',
    '세스토 엘레멘토.png',
    DEFAULT
);

-- coupon insert 문
INSERT INTO COUPON (
    CO_NUMBER,
    CO_NAME,
    CO_PERCENT,
    CO_CDATE,
    CO_PERIOD
) VALUES (
    SEQ_COUPON_CO_NUMBER.NEXTVAL,
    '신규 회원가입',
    15,
    SYSDATE,
    30
);

INSERT INTO COUPON (
    CO_NUMBER,
    CO_NAME,
    CO_PERCENT,
    CO_CDATE,
    CO_PERIOD
) VALUES (
    SEQ_COUPON_CO_NUMBER.NEXTVAL,
    '4월 할인 쿠폰',
    20,
    SYSDATE,
    30
);

-- 쿠폰 이슈
INSERT INTO COUPON_ISSUE (
    CI_NUMBER, 
    CO_NUMBER,
    M_NO,
    CI_STATUS,
    CI_REGI
) VALUES (
    SEQ_COUPON_ISSUE_CI_NUMBER.NEXTVAL,
    1,
    1,
    DEFAULT,
    SYSDATE
);

INSERT INTO COUPON_ISSUE (
    CI_NUMBER,
    CO_NUMBER,
    M_NO,
    CI_STATUS,
    CI_REGI
) VALUES (
    SEQ_COUPON_ISSUE_CI_NUMBER.NEXTVAL,
    2,
    1,
    DEFAULT,
    SYSDATE
);

INSERT INTO COUPON_ISSUE (
    CI_NUMBER,
    CO_NUMBER,
    M_NO,
    CI_STATUS,
    CI_REGI
) VALUES (
    SEQ_COUPON_ISSUE_CI_NUMBER.NEXTVAL,
    1,
    2,
    DEFAULT,
    SYSDATE
);

COMMIT;

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    22,
    '서울 강남지점',
    '74',
    '서울',
    '강남구 테헤란로14길 6 남도빌딩',
    '37.4989761690588',
    '127.03290014843104',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    119,
    '서울 영등포지점',
    '72',
    '서울',
    '서울 영등포구 국제금융로 10 서울 국제금융 센터',
    '37.5249988126906',
    '126.92594967251503',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    120,
    '대전 서구점',
    '55',
    '대전',
    '대전 서구 대덕대로 211 갤러리아 타임월드',
    '36.3519273184447',
    '127.37829380780403',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    121,
    '대구 중구점',
    '35',
    '대구',
    '대구 중구 동성로 25 영스퀘어',
    '35.8693147034938',
    '128.59507903510735',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    122,
    '대구 달서점',
    '33',
    '대구',
    '대구 달서구 달구벌대로259길 15 성서경찰서',
    '35.853345904396',
    '128.508798462966',
    DEFAULT
);

/* 부산 수영점 */
INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    123,
    '부산 수영점',
    '37',
    '부산',
    '부산 수영구 감포로8번길 69',
    '35.1605527151131',
    '129.12451977276584',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    124,
    '부산 사상점',
    '36',
    '부산',
    '부산 사상구 광장로 17',
    '35.1641642222102',
    '128.9789077794985',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    125,
    '울산 남구점',
    '47',
    '울산',
    '울산 남구 중앙로 201 울산광역시청',
    '35.5395655670538',
    '129.3115915622437',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    126,
    '울산 북구점',
    '44',
    '울산',
    '울산 북구 송정동 522-4',
    '35.5931478165657',
    '129.3550462377374',
    DEFAULT
);


INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    127,
    '인천 연수점',
    '60',
    '인천',
    '인천 연수구 컨벤시아대로 177',
    '37.3882171255216',
    '126.64329287461538',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    128,
    '인천 중구점',
    '34',
    '인천',
    '인천 중구 흰바위로27번길 10',
    '37.4933046839883',
    '126.48835085024388',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    129,
    '경기 수원점',
    '38',
    '경기',
    '경기 수원시 영통구 효원로 407 영통구청',
    '37.2595760617385',
    '127.0467206073721',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    130,
    '경기 평택점',
    '65',
    '경기',
    '경기 평택시 경기대로 245',
    '36.9922989075909',
    '127.11275471967605',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    131,
    '경기 가평점',
    '43',
    '경기',
    '경기 가평군 가평읍 석봉로 181',
    '37.8315112353014',
    '127.50965074589541',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    132,
    '광주 서구점',
    '65',
    '광주',
    '광주 서구 내방로 111 광주광역시청',
    '35.160083721041',
    '126.8514571244133',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    133,
    '전주 전주점',
    '55',
    '전주',
    '전북 전주시 덕진구 안덕원로 71',
    '35.8291924669786',
    '127.1373816940671',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
   134,
    '강원 양양점',
    '66',
    '강원',
    '강원 양양군 양양읍 군청길 1 양양군청',
    '38.0754594563481',
    '128.6190086264827',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    135,
    '강원 강릉점',
    '48',
    '강원',
    '강원 강릉시 용지로 176',
    '37.7644829376663',
    '128.89952098203378',
    DEFAULT
);

INSERT INTO STORE (
S_NO,
S_NAME,
S_COUNT,
S_LOCATION,
S_ADDRESS,
S_LAT,
S_LONG,
S_STATUS
) VALUES (
    136,
    '제주 공항점',
    '73',
    '제주',
    '제주 제주시 공항로 2 제주국제공항',
    '33.5071985198936',
    '126.49290391265892 ',
    DEFAULT
);

INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    21,
    '1',
    'I7.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    93,
    '1',
    '던.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    22,
    '1',
    'I8.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    23,
    '1',
    '가야르도.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    24,
    '1',
    '아벤타도르.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    25,
    '1',
    '우라칸 스파이더.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    26,
    '1',
    '우라칸.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    27,
    '1',
    '우루스.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    28,
    '1',
    '고스트.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    29,
    '1',
    '레이스.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    30,
    '1',
    '컬리넌.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    31,
    '1',
    '팬텀.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    32,
    '1',
    '그란카브리오.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    33,
    '1',
    'MC20.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    34,
    '1',
    '570S 스파이더.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    35,
    '1',
    '720S.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    36,
    '1',
    '솔루스GT.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    37,
    '1',
    '스피드 테일.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    38,
    '1',
    '아투라.png',
    DEFAULT
);

INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    39,
    '1',
    '세나.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    40,
    '1',
    'AMG63.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    41,
    '1',
    'GLS.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    42,
    '1',
    'S560 마이바흐.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    43,
    '1',
    'S680 마이바흐.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    44,
    '1',
    '마이바흐 650.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    45,
    '1',
    '벤테이가.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    46,
    '1',
    '플라잉스퍼 3세대.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    47,
    '1',
    '컨티넬탈 GT 컨버터블.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    48,
    '1',
    '플라잉스퍼 V8.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    49,
    '1',
    '라 부아튀르 느와르.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    50,
    '1',
    '볼리드.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    51,
    '1',
    '비테세.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    52,
    '1',
    '시론.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    53,
    '1',
    '콜뱃 C8.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
   54,
    '1',
    'R8 plus 쿠페.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    55,
    '1',
    'R8 V12.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    56,
    '1',
    '458 이탈리아.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    57,
    '1',
    '488스파이더.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    58,
    '1',
    'F8 스파이더.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    59,
    '1',
    'F8 트리뷰토.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    60,
    '1',
    '캘리포니아 T.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    61,
    '1',
    '992 카레라.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    62,
    '1',
    '마칸.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
   63,
    '1',
    '카이엔.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    64,
    '1',
    '타이칸.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
   65,
    '1',
    '파나메라.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    66,
    '1',
    '911 카레라4S.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    67,
    '1',
    '718 박스터S.png',
    DEFAULT
);

INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    68,
    '2',
    'K 1600 GTL.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    69,
    '2',
    'M 1000RR.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    70,
    '2',
    'R 18.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    71,
    '2',
    'R 1250 RS.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    72,
    '2',
    'S1000RR.png',
    DEFAULT
);

INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    74,
    '2',
    'Diavel 1260 S.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    75,
    '2',
    'Panigale V4 R.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    76,
    '2',
    'Panigale V4 S.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    77,
    '2',
    'Streetfighter V4 S.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    78,
    '2',
    'CBR1000RR-R.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    79,
    '2',
    'Gold Wing MT.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    80,
    '2',
    'GOLD Wing DCT.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    81,
    '2',
    'GOLD Wing MT.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
   82,
    '2',
    'ZR1000K.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    83,
    '2',
    'NINJA1000SX.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    84,
    '2',
    'ZX-10R SE BLK.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    85,
    '2',
    'HAYABUSA.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    86,
    '2',
    'GSX-R1000.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    87,
    '2',
    'New KATANA.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    88,
    '2',
    'FJR-1300AS.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    89,
    '2',
    'NIKEN.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    90,
    '2',
    'XT1200ZE.png',
    DEFAULT
);
INSERT INTO PFILE (
    PF_NO,
    PF_CATE,
    PF_NAME,
    PF_ENROLL
) VALUES (
    91,
    '2',
    'YZF-R1M.png',
    DEFAULT
);

COMMIT;

/* 서울 강남지점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '서울 강남 지점',
    DEFAULT,
    DEFAULT,
    22, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);



/* 서울 영등포지점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '서울 영등포지점',
    DEFAULT,
    DEFAULT,
    119, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);





/* 대전 서구점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '대전 서구점',
    DEFAULT,
    DEFAULT,
    120, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 대구 중구점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '대구 중구점',
    DEFAULT,
    DEFAULT,
    121, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 대구 달서점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '대구 달서점',
    DEFAULT,
    DEFAULT,
    122, -- sTORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 부산 수영점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '부산 수영점',
    DEFAULT,
    DEFAULT,
    123, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 부산 사상점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '부산 사상점',
    DEFAULT,
    DEFAULT,
    124, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 울산 남구점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '울산 남구점',
    DEFAULT,
    DEFAULT,
    125, -- sTORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 울산 북구점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '울산 북구점',
    DEFAULT,
    DEFAULT,
    126, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 인천 연수점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '인천 연수점',
    DEFAULT,
    DEFAULT,
    127, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 인천 중구점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '인천 중구점',
    DEFAULT,
    DEFAULT,
    128, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 경기 수원점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '경기 수원점',
    DEFAULT,
    DEFAULT,
    129, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
/* 경기 평택점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '경기 평택점',
    DEFAULT,
    DEFAULT,
    130, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 경기 가평점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '경기 가평점',
    DEFAULT,
    DEFAULT,
    131, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 광주 서구점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '광주 서구점',
    DEFAULT,
    DEFAULT,
    132, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 전주 전주점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '전주 전주점',
    DEFAULT,
    DEFAULT,
    133, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 제주 공항점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '제주 공항점',
    DEFAULT,
    DEFAULT,
    136, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


/* 강원 양양점 */
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '레이스', -- 이름
    '복합', -- 연비
    12857, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    4500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    29, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우루스', -- 이름
    '복합', -- 연비
    20438, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Lamborghini',
    '가솔린',
    3700000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    27, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '가야르도', -- 이름
    '5.8km', -- 연비
    12932, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    23, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸스파이더', -- 이름
    '복합', -- 연비
    16887, -- 차량 주행거리
    5204, -- 차량 cc
    2021, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    25, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '캘리포니아 T', -- 이름
    '9.5km', -- 연비
    42471, -- 차량 주행거리
    3855, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3100000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    60, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '458 이탈리아', -- 이름
    '5.6km', -- 연비
    7481, -- 차량 주행거리
    4497, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4200000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    56, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '570S 스파이더', -- 이름
    '9.3km', -- 연비
    38711, -- 차량 주행거리
    3799, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4100000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    34, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아투라', -- 이름
    '복합', -- 연비
    7895, -- 차량 주행거리
    2993, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 전기, 하이브리드',
    4800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    38, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '스피드 테일', -- 이름
    '복합', -- 연비
    3811, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린, 하이브리드',
    5000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    37, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '벤테이가', -- 이름
    '6.7km', -- 연비
    40889, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    45, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컨티넨탈 GT 컨버터블', -- 이름
    '7.4km', -- 연비
    17441, -- 차량 주행거리
    3996, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    3800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    47, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 V8', -- 이름
    '14.7km', -- 연비
    29284, -- 차량 주행거리
    3998, -- 차량 cc
    2018, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    48, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '718 박스터S', -- 이름
    '9.4km', -- 연비
    47184, -- 차량 주행거리
    1998, -- 차량 cc
    2020, -- 차량 연식
    'F4',
    'Porsche',
    '가솔린',
    2800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    67, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '992 카레라', -- 이름
    '5.6km', -- 연비
    27156, -- 차량 주행거리
    5733, -- 차량 cc
    2018, -- 차량 연식
    'V10',
    'Porsche',
    '가솔린',
    4500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    61, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마칸', -- 이름
    '7.6km', -- 연비
    38581, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    62, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '911 카레라4S', -- 이름
    '6.8km', -- 연비
    15225, -- 차량 주행거리
    3745, -- 차량 cc
    2021, -- 차량 연식
    'F6',
    'Porsche',
    '가솔린',
    3500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    66, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'MC20', -- 이름
    '7.0km', -- 연비
    35557, -- 차량 주행거리
    2992, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Maserati',
    '가솔린',
    3500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    33, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'AMG63', -- 이름
    '5.9km', -- 연비
    38421, -- 차량 주행거리
    3982, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    40, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'GLS', -- 이름
    '6.6km', -- 연비
    39988, -- 차량 주행거리
    3982, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    41, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S680 마이바흐', -- 이름
    '5.9km', -- 연비
    18426, -- 차량 주행거리
    5980, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    4200000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    43, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I7', -- 이름
    '3.7km', -- 연비
    52047, -- 차량 주행거리
    2998, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'BMW',
    '전기',
    3000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    21, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 plus 쿠페', -- 이름
    '6.5km', -- 연비
    64332, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V10',
    'Audi',
    '가솔린',
    3400000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    54, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '콜뱃 C8', -- 이름
    '복합', -- 연비
    20574, -- 차량 주행거리
    5499, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Chevrolet',
    '가솔린',
    2900000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    53, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '비테세', -- 이름
    '복합', -- 연비
    7047, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    8500000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    51, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '라 부아튀르 누아르', -- 이름
    '복합', -- 연비
    2887, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    13000000, -- 비용
    '강원 양양점',
    DEFAULT,
    DEFAULT,
    134, -- STORE PK 값
    49, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);


/* 강원 강릉점 */

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '고스트', -- 이름
    '복합', -- 연비
    22103, -- 차량 주행거리
    6750, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5000000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    28, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '던', -- 이름
    '복합', -- 연비
    8437, -- 차량 주행거리
    6592, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    5500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    93, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '컬리넌', -- 이름
    '5.8km', -- 연비
    2841, -- 차량 주행거리
    6750, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    30, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '팬텀', -- 이름
    '5.8km', -- 연비
    16151, -- 차량 주행거리
    6749, -- 차량 cc
    2023, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    6500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    31, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '보트테일', -- 이름
    '복합', -- 연비
    8588, -- 차량 주행거리
    6749, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'RollsRoyce',
    '가솔린',
    12000000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    1, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '우라칸', -- 이름
    '복합', -- 연비
    28483, -- 차량 주행거리
    5204, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    4500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    26, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '아벤타도르', -- 이름
    '복합', -- 연비
    32382, -- 차량 주행거리
    6498, -- 차량 cc
    2021, -- 차량 연식
    'V12',
    'Lamborghini',
    '가솔린',
    4400000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    24, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세스토 엘레멘토', -- 이름
    '복합', -- 연비
    13984, -- 차량 주행거리
    5204, -- 차량 cc
    2019, -- 차량 연식
    'V10',
    'Lamborghini',
    '가솔린',
    10000000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    2, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '488 스파이더', -- 이름
    '8.8km', -- 연비
    30511, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3300000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    57, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 스파이더', -- 이름
    '6.4km', -- 연비
    22142, -- 차량 주행거리
    3902, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    3800000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    58, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'F8 트리뷰토', -- 이름
    '6.6km', -- 연비
    4007, -- 차량 주행거리
    3902, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Ferrari',
    '가솔린',
    4800000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    59, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '720S', -- 이름
    '복합', -- 연비
    23110, -- 차량 주행거리
    3994, -- 차량 cc
    2023, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4300000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    35, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '세나', -- 이름
    '복합', -- 연비
    10548, -- 차량 주행거리
    3994, -- 차량 cc
    2022, -- 차량 연식
    'V8',
    'Mclaren',
    '가솔린',
    4800000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    39, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '솔루스 GT', -- 이름
    '복합', -- 연비
    14715, -- 차량 주행거리
    5199, -- 차량 cc
    2022, -- 차량 연식
    'V10',
    'Mclaren',
    '가솔린',
    7600000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    36, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '플라잉스퍼 3세대', -- 이름
    '6.8km', -- 연비
    5154, -- 차량 주행거리
    3996, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Bentley',
    '가솔린',
    4700000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    46, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '카이엔', -- 이름
    '8.0km', -- 연비
    29448, -- 차량 주행거리
    2995, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린, 전기, 하이브리드',
    3100000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    63, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '파나메라', -- 이름
    '8.0km', -- 연비
    18174, -- 차량 주행거리
    2894, -- 차량 cc
    2022, -- 차량 연식
    'V6',
    'Porsche',
    '가솔린',
    3300000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    65, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '타이칸', -- 이름
    '3.2km', -- 연비
    12205, -- 차량 주행거리
    3993, -- 차량 cc
    2023, -- 차량 연식
    '리튬 이온',
    'Porsche',
    '전기',
    3500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    64, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '그란카브리오', -- 이름
    '6.1km', -- 연비
    16421, -- 차량 주행거리
    4691, -- 차량 cc
    2021, -- 차량 연식
    'V8',
    'Maserati',
    '가솔린',
    3000000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    32, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'S560 마이바흐', -- 이름
    '7.5km', -- 연비
    21475, -- 차량 주행거리
    3982, -- 차량 cc
    2020, -- 차량 연식
    'V8',
    'Benz',
    '가솔린',
    3400000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    42, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '마이바흐 650', -- 이름
    '복합', -- 연비
    25475, -- 차량 주행거리
    5980, -- 차량 cc
    2022, -- 차량 연식
    'V12',
    'Benz',
    '가솔린',
    3900000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    44, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'I8', -- 이름
    '12.7km', -- 연비
    59557, -- 차량 주행거리
    1499, -- 차량 cc
    2021, -- 차량 연식
    'I3',
    'BMW',
    '가솔린, 하이브리드, 전기',
    3300000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    22, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    'R8 V12', -- 이름
    '5.8km', -- 연비
    46775, -- 차량 주행거리
    5204, -- 차량 cc
    2020, -- 차량 연식
    'V12',
    'Audi',
    '가솔린',
    3800000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    55, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '시론', -- 이름
    '복합', -- 연비
    4987, -- 차량 주행거리
    7993, -- 차량 cc
    2023, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7500000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    52, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);
INSERT INTO CAR (
    C_NO,
    C_NAME,
    C_MILE,
    C_KM,
    C_CC,
    C_YEAR,
    C_ENGINE,
    C_BRAND,
    C_FUEL,
    C_PRICE,
    C_POSITION,
    C_STATUS,
    C_SALE,
    S_NO,
    PF_NO,
    C_COUNT,
    C_ENROLL_DATE
) VALUES (
    SEQ_CAR_C_NO.NEXTVAL,
    '볼리드', -- 이름
    '복합', -- 연비
    6787, -- 차량 주행거리
    7993, -- 차량 cc
    2022, -- 차량 연식
    'W16',
    'Bugatti',
    '가솔린',
    7400000, -- 비용
    '강원 강릉점',
    DEFAULT,
    DEFAULT,
    135, -- STORE PK 값
    50, -- 차량 사진 파일 번호
    1, -- 대여 횟수
    DEFAULT
);

/* 전주 전주점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
   5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '전주 전주점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    133, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 서울 강남지점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '서울 강남 지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    22, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 대전 서구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '대전 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    120, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 대구 중구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    121, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

/* 서울 강남지점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '대구 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    122, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

/* 서울 강남지점 */


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);




INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);



INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '부산 수영점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    123, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 부산 사상점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);




INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);



INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);



INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '부산 사상점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    124, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 울산 남구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '울산 남구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    125, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 울산 북구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);



INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '울산 북구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    126, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 인천 연수점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '인천 연수점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    127, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

/* 인천 중구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '인천 중구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    128, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

/* 경기 수원점 */


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '경기 수원점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    129, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);


/* 경기 평택점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);



INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '경기 평택점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    130, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);


/* 경기 가평점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '경기 가평점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    131, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);


/* 광주 서구점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '광주 서구점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    132, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 강원 양양점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '강원 양양점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    134, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

/* 강원 강릉점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '강원 강릉점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    135, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 서울 강남지점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '제주 공항점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    136, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

/* 서울 영등포지점 */
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'S1000RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    13750, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    12857, -- 주행거리
    450000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    72, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 1250 RS', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1254, -- 배기량
    7750, -- 출력
    6250, -- 토크
    18, -- 연료 랭크(L)
    2022, -- 연식
    22103, -- 주행거리
    480000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    71, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'R 18', -- 이름
    'BMW', -- 브랜드
    '공랭 4스트로크 2기통', -- 엔진 형식
    1802, -- 배기량
    5760, -- 출력
    3000, -- 토크
    16, -- 연료 랭크(L)
    2023, -- 연식
    2841, -- 주행거리
    500000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    70, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'M 1000 RR', -- 이름
    'BMW', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    8043, -- 주행거리
    450000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    69, -- PF파일 값
    1, 
    DEFAULT
);
INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'K 1600 GTL', -- 이름
    'BMW', -- 브랜드
    '오일 냉각식/수랭식 6기통', -- 엔진 형식
    1649, -- 배기량
    6750, -- 출력
    5250, -- 토크
    26, -- 연료 랭크(L)
    2023, -- 연식
    8437, -- 주행거리
    480000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    68, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'CBR1000RR R', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    999, -- 배기량
    14500, -- 출력
    12500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    9232, -- 주행거리
    380000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    78, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Gold Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    6326, -- 주행거리
    550000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    79, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing DCT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    10863, -- 주행거리
    550000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    80, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GOLD Wing MT', -- 이름
    'Honda', -- 브랜드
    '수랭 4스트로크 6기통', -- 엔진 형식
    1833, -- 배기량
    5500, -- 출력
    4500, -- 토크
    21, -- 연료 랭크(L)
    2022, -- 연식
    5232, -- 주행거리
    550000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    81, -- PF파일 값
    1, 
    DEFAULT
);


INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Streetfighter V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모드로믹', -- 엔진 형식
    1103, -- 배기량
    12750, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    6657, -- 주행거리
    480000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    77, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 S', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    1103, -- 배기량
    13000, -- 출력
    11000, -- 토크
    16, -- 연료 랭크(L)
    2022, -- 연식
    7231, -- 주행거리
    480000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    76, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Panigale V4 R', -- 이름
    'Ducati', -- 브랜드
    '수랭V형 4기통 데스모세디치', -- 엔진 형식
    998, -- 배기량
    15250, -- 출력
    11500, -- 토크
    16, -- 연료 랭크(L)
    2021, -- 연식
    11982, -- 주행거리
    400000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    75, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'Diavel 1260 S', -- 이름
    'Ducati', -- 브랜드
    '수랭L트윈 듀얼스파크 4기통', -- 엔진 형식
    922, -- 배기량
    9500, -- 출력
    7500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    4432, -- 주행거리
    570000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    74, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'New KATANA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    9250, -- 토크
    12, -- 연료 랭크(L)
    2022, -- 연식
    9442, -- 주행거리
    470000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    87, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'HAYABUSA', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1339, -- 배기량
    9700, -- 출력
    7000, -- 토크
    20, -- 연료 랭크(L)
    2021, -- 연식
    4432, -- 주행거리
    560000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    85, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'GSX-R1000', -- 이름
    'Suzuki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13200, -- 출력
    10800, -- 토크
    16, -- 연료 랭크(L)
    2018, -- 연식
    10470, -- 주행거리
    390000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    86, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZX-10R SE BLK', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2020, -- 연식
    8447, -- 주행거리
    380000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    84, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'ZR1000K', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    11000, -- 출력
    8500, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    14871, -- 주행거리
    460000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    82, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NINJA1000SX', -- 이름
    'Kawasaki', -- 브랜드
    '수랭 4사이클 병렬 4기통', -- 엔진 형식
    1043, -- 배기량
    10000, -- 출력
    7300, -- 토크
    19, -- 연료 랭크(L)
    2022, -- 연식
    8477, -- 주행거리
    520000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    83, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'YZF-R1M', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    998, -- 배기량
    13500, -- 출력
    11500, -- 토크
    17, -- 연료 랭크(L)
    2022, -- 연식
    18477, -- 주행거리
    380000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    91, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'XT1200ZE', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 2기통', -- 엔진 형식
    1199, -- 배기량
    7250, -- 출력
    6000, -- 토크
    23, -- 연료 랭크(L)
    2020, -- 연식
    3058, -- 주행거리
    480000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    90, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'NIKEN', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 3기통', -- 엔진 형식
    847, -- 배기량
    10000, -- 출력
    8500, -- 토크
    18, -- 연료 랭크(L)
    2021, -- 연식
    8002, -- 주행거리
    370000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    89, -- PF파일 값
    1, 
    DEFAULT
);

INSERT INTO MOTOCYCLE (
    MC_NO,
    MC_NAME,
    MC_BRAND,
    MC_ENGINE,
    MC_CC,
    MC_OUTPUT,
    MC_TORQUE,
    MC_FUEL,
    MC_YEAR,
    MC_KM,
    MC_PRICE,
    MC_POSITION,
    MC_STATUS,
    MC_SALE,
    S_NO,
    PF_NO,
    MC_COUNT,
    MC_ENROLL_DATE
) VALUES (
    5000 + SEQ_MOTOCYCLE_MC_NO.NEXTVAL,
    'FJR-1300AS', -- 이름
    'Yamaha', -- 브랜드
    '수랭 4스트로크 4기통', -- 엔진 형식
    1298, -- 배기량
    8000, -- 출력
    7000, -- 토크
    25, -- 연료 랭크(L)
    2020, -- 연식
    4058, -- 주행거리
    520000, -- 비용
    '서울 영등포지점', -- 지점 위치
    DEFAULT,
    DEFAULT,
    119, -- STORE FK값
    88, -- PF파일 값
    1, 
    DEFAULT
);

COMMIT;