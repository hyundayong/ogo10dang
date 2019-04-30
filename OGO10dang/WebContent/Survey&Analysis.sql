-- 설문조사 탭 관련 MBODYINFO_HM 테이블 생성 및 확인
CREATE TABLE MBODYINFO_HM (
    ID          VARCHAR2(15)   PRIMARY KEY,
    NAME        VARCHAR2(20)   NOT NULL,
    AGE         NUMBER(3)      NOT NULL,
    HEIGHT      NUMBER(3)      NOT NULL,
    WEIGHT      NUMBER(3)      NOT NULL,
    SMOKE       VARCHAR2(3)    NOT NULL,
    DRINK       NUMBER(1)      NOT NULL,
    EXERCISE    NUMBER(1)      NOT NULL,
    PURPOSE     VARCHAR2(50)   NOT NULL,
    ARM         NUMBER(1)      NOT NULL,
    CHEST       NUMBER(1)      NOT NULL,
    SHOULDER    NUMBER(1)      NOT NULL,
    BELLY       NUMBER(1)      NOT NULL,
    LEG         NUMBER(1)      NOT NULL,
    SCORE       NUMBER(2)      NOT NULL,       /*항목 별 합산 점수(ARM + CHEST + SHOULDER + BELLY + LEG)*/
    MUSCLE      NUMBER(1)      NOT NULL,       /*항목 별 근육형 선택 개수*/
    BODYTYPE    VARCHAR2(10)   NOT NULL        /*(마름, 보통, 비만, 근육형)*/
);

DESC MBODYINFO_HM;
SELECT * FROM MBODYINFO_HM;

-- 설문조사 탭 관련 WBODYINFO_HM 테이블 생성 및 확인
CREATE TABLE WBODYINFO_HM(
    ID          VARCHAR2(15)   PRIMARY KEY,
    NAME        VARCHAR2(20)   NOT NULL,
    AGE         NUMBER(3)      NOT NULL,
    HEIGHT      NUMBER(3)      NOT NULL,
    WEIGHT      NUMBER(3)      NOT NULL,
    SMOKE       VARCHAR2(3)    NOT NULL,
    DRINK       NUMBER(1)      NOT NULL,
    EXERCISE    NUMBER(1)      NOT NULL,
    PURPOSE     VARCHAR2(20)   NOT NULL,
    ARM         NUMBER(1)      NOT NULL,
    BELLY       NUMBER(1)      NOT NULL,
    THIGH       NUMBER(1)      NOT NULL,
    CALF        NUMBER(1)      NOT NULL,
    HIP         NUMBER(1)      NOT NULL,
    SCORE       NUMBER(2)      NOT NULL,       /*항목 별 합산 점수(ARM + BELLY + THIGH + CALF + HIP)*/
    MUSCLE      NUMBER(1)      NOT NULL,       /*항목 별 근육형 선택 개수*/
    BODYTYPE    VARCHAR2(10)   NOT NULL        /*(마름, 보통, 비만, 근육형)*/
);

DESC WBODYINFO_HM;
SELECT * FROM WBODYINFO_HM;


-- 체형분석 탭 관련 FOODDICT_HM 테이블 생성 및 확인
CREATE TABLE FOODDICT_HM (
    FOOD		VARCHAR2(10)	PRIMARY KEY,		
    SMOKE		VARCHAR2(1)		NOT NULL,		    /* Y/N(흡연 설문 1번 = Y / 2번 = N) */
    DRINK		VARCHAR2(1)		NOT NULL,		    /* Y/N(음주 설문 3, 4번 = Y / 1, 2번 = N) */
    DIET		VARCHAR2(1),				        /* Y/N(운동목적 설문 1번 = Y) */
    HEALTH	    VARCHAR2(1),				        /* Y/N(운동목적 설문 2번 = Y) */
    MUSCLE	    VARCHAR2(1),					    /* Y/N(운동목적 설문 3번 = Y) */
    FOODPHOTO   VARCHAR2(25)                        /* 음식 사진명 */   
);

DESC FOODDICT_HM;
SELECT * FROM FOODDICT_HM;

-- 식단 항목 저장 SQL문↓

-- 운동목적 2개 이상에 해당되는 항목
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET, MUSCLE)
VALUES('사과', 'Y', 'Y', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET, HEALTH)
VALUES('아보카도', 'N', 'Y', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET, MUSCLE)
VALUES('콩', 'N', 'N', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET, MUSCLE)
VALUES('계란', 'N', 'N', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH, MUSCLE)
VALUES('호두', 'N', 'Y', 'Y', 'Y');

-- 운동목적 DIET(다이어트)에 해당되는 항목
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET)
VALUES('피클', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET)
VALUES('고춧가루', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET)
VALUES('다크 초콜릿', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET)
VALUES('견과류', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, DIET)
VALUES('물', 'N', 'N', 'Y');

-- 운동목적 HEALTH(체력증진)에 해당되는 항목
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('마늘', 'Y', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('녹차', 'Y', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('토마토', 'Y', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('오미자', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('고추', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('보리', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('블루베리', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('고등어', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('김', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, HEALTH)
VALUES('버섯', 'N', 'N', 'Y');

-- 운동목적 MUSCLE(근력증가)에 해당되는 항목
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('커피', 'N', 'Y', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('감자', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('시금치', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('닭 가슴살', 'N', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('양파', 'Y', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK, MUSCLE)
VALUES('붉은 피망', 'N', 'N', 'Y');

-- 흡연, 음주에만 해당하고, 운동목적과는 부합되지 않는 항목
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK)
VALUES('오트밀', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK)
VALUES('자몽', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK)
VALUES('심황', 'N', 'Y');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK)
VALUES('브로콜리', 'Y', 'N');
INSERT INTO FOODDICT_HM (FOOD, SMOKE, DRINK)
VALUES('무', 'Y', 'N');


-- 체형분석 탭 관련 MEXERCISEDICT_HM 테이블 생성 및 확인
CREATE TABLE MEXERCISEDICT_HM (
    EXERCISE	VARCHAR2(45)		PRIMARY KEY,	
    GRADE		NUMBER(1),					        /*1, 2, 3, 4(운동 자체의 강도)*/
    ARM		    VARCHAR2(1),					    /*U/D/N(팔에 좋은 운동 : 이두 = U, 삼두 = U))*/
    BELLY		VARCHAR2(1),					    /*Y/N(복부에 좋은 운동 = Y)*/
    CHEST		VARCHAR2(1),				    	/*Y/N(가슴에 좋은 운동 = Y)*/
    SHOULDER	VARCHAR2(1),				    	/*Y/N(어깨, 등에 좋은 운동 = Y)*/
    LEG		    VARCHAR2(1),			    		/*Y/N(하체에 좋은 운동 = Y)*/
    EXERCISELINK	VARCHAR2(120)			        	/*운동 관련 링크*/
);

DESC MEXERCISEDICT_HM;
SELECT * FROM MEXERCISEDICT_HM;

-- 체형분석 탭 관련 WEXERCISEDICT_HM 테이블 생성 및 확인
CREATE TABLE WEXERCISEDICT_HM (
    EXERCISE	VARCHAR2(45)		PRIMARY KEY,	
    GRADE		NUMBER(1),					        /*1, 2, 3, 4(운동 자체의 강도)*/
    ARM		    VARCHAR2(1),					    /*Y/N(팔에 좋은 운동 = Y)*/
    BELLY		VARCHAR2(1),					    /*Y/N(복부에 좋은 운동 = Y)*/
    THIGH		VARCHAR2(1),				    	/*Y/N(허벅지에 좋은 운동 = Y)*/
    CALF		VARCHAR2(1),				    	/*Y/N(종아리에 좋은 운동 = Y)*/
    HIP		    VARCHAR2(1),				    	/*Y/N(엉덩이에 좋은 운동 = Y)*/
    EXECISELINK	VARCHAR2(120)			        	/*운동 관련 링크*/
);

DESC WEXERCISEDICT_HM;
SELECT * FROM WEXERCISEDICT_HM;

-- 운동 항목 저장 SQL문↓

-- 전신(ARM이 U or D이며 다른 모든 부위가 Y)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM, BELLY, CHEST, SHOULDER, LEG)
VALUES('런닝(달리기)', 1, 'D', 'Y', 'Y', 'Y', 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM, BELLY, CHEST, SHOULDER, LEG)
VALUES('푸시업(팔굽혀펴기)', 1, 'D', 'Y', 'Y', 'Y', 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM, BELLY, CHEST, SHOULDER, LEG)
VALUES('타바타(서킷 트레이닝)', 4, 'D', 'Y', 'Y', 'Y', 'Y');

-- ARM - U(팔 - 이두)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('덤벨 컬', 2, 'U');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('해머 컬', 2, 'U');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('바벨 컬', 3, 'U');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('프리쳐 컬', 3, 'U');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('케이블 컬', 2, 'U');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('컨센트레이션 컬', 2, 'U');

-- ARM - D(팔 - 삼두)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('킥 백', 2, 'D');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('벤치 딥스', 2, 'D');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('다이아몬드 푸시업', 3, 'D');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('원암 트라이셉스 익스텐션', 2, 'D');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('케이블 트라이셉스 프레스 다운', 3, 'D');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, ARM)
VALUES('라잉 트라이셉스 익스텐션', 3, 'D');

-- CHEST(가슴)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('인클라인 푸시업', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('디클라인 푸시업', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('딥스', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('플랫 벤치 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('인클라인 벤치 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('케이블 플라이', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('플랫 덤벨 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, CHEST)
VALUES('인클라인 덤벨 프레스', 3, 'Y');

-- SHOULDER(어깨, 등)
-- Part1(어깨)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('프런트 레트럴 레이즈', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('사이드 레트럴 레이즈', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('벤트 오버 레트럴 레이즈', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('물구나무 푸시업', 4, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('머신 숄더 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('덤벨 숄더 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('오버헤드 프레스', 4, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('아놀드 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('비하인드 넥 프레스', 4, 'Y');
-- Part2(등)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('철봉 매달리기(30초이상)', 1, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('턱걸이(풀업)', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('턱걸이(친업)', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('바벨 로우', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('원암 덤벨로우', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('컨벤셔널 데드리프트', 4, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('루마니안 데드리프트', 4, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('스트레이트 풀다운', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('케이블 로우', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, SHOULDER)
VALUES('렛풀 다운', 2, 'Y');

-- BELLY(복부)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('윗몸 일으키기', 1, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('크런치', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('플랭크', 1, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('사이드 플랭크', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('라잉 레그 레이즈', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, BELLY)
VALUES('행잉 레그 레이즈', 3, 'Y');

-- LEG(하체)
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('맨몸 스쿼트', 1, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('케틀벨 스쿼트', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('바벨 백 스쿼트', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('바벨 프런트 스쿼트', 4, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('레그 익스텐션', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('레그 컬', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('프런트 런지', 2, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('백 런지', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('레그 프레스', 3, 'Y');
INSERT INTO MEXERCISEDICT_HM (EXERCISE, GRADE, LEG)
VALUES('스티프', 3, 'Y');


-- 작성된 SQL문 반영하는 트랜젝션
COMMIT
