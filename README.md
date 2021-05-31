#### 20210531(월) 작업예정.
- 오라클 : 테이블스페이스(TableSpace) = 스키마(Scheme) = 데이터베이스(DB)
- 지난주 금요일날, 오라클 웹용 관리프로그램에서 XE라는 테이블스페이스를 XE 사용자로 추가했음.
- EntityRelationDiagram(ERD-객체관계그림) : Entity는 테이블을 명칭
- 설치시 암호는 apmsetup 로 통일
- -4장 패키지와 예외처리 실습
- 스프링프로젝트 ERD 제작 후 게시판 UI디자인 적용.
- 데이터 모델 : Model Object를 형상화 시킨것
- RDBMS : RelationDataBaseManagementSystem(관계형데이타베이스관리시스템)

#### 20210528(금) 작업예정.
- 오라클11g ExpressEditon 설치예정. OracleXe112_Win64.zip
- SQL 디벨러퍼를 다운받아서 압축풀기 -ERD제작할 예정.
- StructuredQueryLanguage : 구조화된 질의 언어
- QueryString : URL에서 전송하는 값(질의문)을 문장으로 저장한 내용. ?로 시작.
- CommendLineInterface : SQL*Plus 터미널화면으로 SQL쿼리 실행X
- GrapicUserInter: SQL디벨러퍼 윈도우 화면 에디터에서 SQL쿼리 실행O
- SQL Developer 프로그램으로 ERD 다이어그램 그림으로 프로젝트 구조제작예정
- EntityRelationDiagram :테이블관계도형(아래)
- 첨부파일(자식)->게시판테이블(부모)<-댓글테이블
- 프로젝트 진행: 발주(클라이언트)->수주(개발사)-> 디자인UI(Client-Dev) ->ERD(이사나 팀장) ->코딩 시작(ERD보면서 UI소스 프로그램 입히기)
- 자바앱에서는 객체를 생성후 사용이 끝나면, 메모리에서 삭제하는 명령이 필수.
- 객체를 메모리에서 삭제: Object = null;
- 스프링에서는 내장된 가비지컬렉터(garbage쓰레기수집가)가 자동으로 실행
- 위와 같이 개발자가 하던 메모리관리를 스프링이 대신 =IoC(Inversion Of Control)제어의 역전. 스프링 특징3가지(IoC,AOP,DI)
-  

#### 20210527(목) 작업.
- 3장 객체와 클래스부터 시작
- 스프링에서는 클래스 extends상속보다는 인터페이스 implements를 더 많이 사용한다
- abstract클래스(추상클래스): 구현내용 없이 메서드명만 있는 클래스
- 메서드 명만 있기(구현내용X)때문에 객체로 만들 수 없는 클래스
- 부모로서 자식에게 상속만(메서드 이름만)해서 재사용만 가능하게 된다.
- 객체로 만들 수 없다? 실행가능한 클래스로 사용하지 못하지만, 프로그램을 구조화 시킬때 필요.
- Step1 aaa= new Step1();//이렇게 생성자로 객체를 만들지 못함.
- final클래스 :부모가 될 수 없는 클래스(상속해서 재사용 불가능한 클래스)
- 접근제어자 : public(패키지 위치에 상관없이 접근- 제일 많이 사용),
- public 클래스 안에서 멤버변수는 private를 제일 많이 사용.(private보안성 갖춤)
- public 클래스 안에서 멤버메서드는 public을 많이 사용.(외부 다른 클래스의 메서드를 사용) 대신, 변수가 private이기 때문에, 직접수정X, 실행만 된다.
- 인스턴스(클라우드주로사용)=오브젝트(자바)=객체=실행중인클래스
- 클래스 자료형(int, long, String처럼)은 멤버변수, 멤버메서드, 서브클래스 등등 포함할 수 있습니다.=C언어 구조체 자료형
- 이클립스 커밋, 푸시가 안 될 때 맨 밑에 체크박스 선택후 진행

#### 20210526(수)
- 붕어빵 : 붕어빵틀(클래스) -> 붕어빵이 구워져서 나오면 오브젝트(객체)
- OOP :객체지향(클래스를 실행가능하게 하는) 프로그래밍 ->자바
- 객체 = 오브젝트 = 인스턴스 = 실행가능한 클래스
- 객체(Object)와 클래스 : 클래스형 자료를 실행가능하게 만든 것을 오브젝트(객체)라고 함.
- 추상화(Abstract) : 오프라인 업무 -> 대표 업무만 뽑아낸 클래스 = 추상 클래스
- 오버라이드 : 상속받아서 재정의 메서드 오버라이드 = 다형성구현했다
- 클래스는 멤버변수 + 멤버메서드(실행) + 서브클래스
- 변하지 않는 변수=상수=변수명을 대문자(원주율)PI=3.141569........
- 보통 상수변수는 클래스의 제일 상단 위치합니다.
- 기본형(정수자료형-소문자시작): byte<short<int<long 10L(롱타입변수)
- 기본형(실수자료형-소수점, 소문자시작): float<double 12.34f (실수형숫자)
- 기본형(문자형-'' 따옴표로 값을 입력해야 에러가 나지 않음) : char ,1개의 문자만 입력.
- 문자형에서 유니코드 \u 숫자 입니다.
- 기본형(불린형- 참, 거짓):boolean,(0|1)
- 참조형(대문자로 시작):참조형 변수의 대표적인 변수 클래스
- 클래스변수(저장된 상태) ->실행 가능하게 되었을때, 인스턴스 변수(메모리로드된 상태)
- 인스턴스라는 말보다는 오브젝트라는 말을 더 많이 사용한다.
- String(문자열 클래스 변수) : 대문자로 시작
- 상수변수를 명시적으로 만들때: final int MAX = 100;
- for-each 반복문전까지 실습

#### 20210525(화)
- 스프링MVC프로젝트 : ModelViewController약자 MVC구조(웹프로그램구조)
- src/test/java폴더 만들었습니다. : test작업은 이 폴더에서 하라는 약속.
- src/main/java폴더가 진짜 프로그램 작업을 하는 폴더.
- javac HelloWorld.java -encoding UTF-8 (한글 내용도 컴파일됨)
- 위 java컴파일러로 실행한 결과 -> HelloWorld.class 파일이 생성됨.
- 주의) 클래스파일 실행은 패키지의 루트(최상위)에서 실행해야 함.
- kr.or.test패키지 root폴더 src/test/java폴더에 실행을 해야함.
- java kr.ot.test.HelloWorld 클래스를 실행하게 됨.
- 이클립스 나오기 전, 25년전 javac 컴파일에서 class프로그램을 만들었다.
- 지금은 터미널에서 javac 사용하지 않고, 이클립스에서 바로 실행함.
- javac 자바앱 컴파일러 -> 클래스 실행파일을 만듬 .class (자바환경JVM실행)
- Maven(메이븐) : 웹프로그램 컴파일러 ->웹프로그램(앱)->웹프로그램(앱) 실행파일을 만듬.war (톰캣에서 실행)
- 메이븐이 컴파일할때, 자바소스만 컴파일 하는 것이 아니고, 외부 라이브러리도 가져와서 바인딩(묶어줌) =패키징이라고 함 =.war(와르)파일로 패키징됨.
- 메이븐이 관리하는 외부 라이브러리파일(lib) 목록을 저장하는 파일 pom.xml입니다.
- pom.xml에서 자바버전을 1.6->1.8 변경 후 메이븐을 업데이트 합니다.
- 외부 라이브러리 파일을 참조하는 방식을 영어로 =dependency(디펜던시)
- jar파일 : JavaARchive=jar 자바앱을 패키징한 파일

#### 20210525() 작업
- 자바 기초 실습
- 자바 .java클래스파일을 컴파일해서 생성된 .class파일 실행하는 구조.

- 파이썬/자바스크립트는 인터프리터 방식으로 실행
- 자바스크립트는 함수기반의 프로그래밍
- 자바는 객체지향 프로그래밍(Object Oriented Program)
- 오브젝트(객체) = 실행가능한 Class(클래스)
- 아스키, 유니코드(UnicodeTypeFormat-8)
- 아스키코드 IoT에서 데이터 전송시 필수로 확인해야 함. 0을 전송-> 48값을 받습니다.
- IoT프로그램시 하드웨어 값을 주고 받을때 if(varl == 48) {구현내용}
- 공유기가 하위로 가질수 있는 사설IP는 255개 
- 영어 인코딩은 아스키코드로 다 표현 가능
- 단, 한글 인코딩 중국어 /일본어 인코딩 등등은 아스키코드로 다 표현하지 못함 그래서, 유니코드 UTF-8등장
- Hex(16진수), Dec(10진수), Char(문자)= 127개 = 아스키문자의 크기(컴문자-사람문자 1:1매칭
- Oct(8진수), Bin(2진수)
- 아스키코드-7비트코드(127글자) -> ANSI코드-8비트(256글자) -> UniCode(65536글자)-UTF-8
- UTF8mb4(이모지까지 포함: 이모티콘+이미지)
- 자바언어를 한다는 것은 컴파일 후 실행이 된다는 의미. ->실습예정
- 자바스크립트(파이썬)는 그냥 실행해서 프로그램을 만들어 집니다. ->실습예정