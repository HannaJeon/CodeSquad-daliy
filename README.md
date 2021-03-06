# CodeSquad-Daliy

| 폴더   | 문제            | 커밋시간         | 진행과정    |
|:-----:|:--------------:|:--------------:|:--------:|
| Day01 | CXPen          | 17.03.15 18:40 | 완료      |
| Day01 | FileMatcher    | 17.03.16 00:20 | 완료      |
| Day02 | CXMonamiPen    | 17.03.15 20:50 | 완료      |
| Day03 | Date & Time    | 17.03.19 02:30 | 완료      |
| Day03 | VendingMachine | 17.03.18 21:30 | 완료      |
| Day04 | Multi-Touches  | 17.03.18 21:30 | 완료      |
| Day05 | MyVending      | 17.03.21 21:27 | 완료      |
| Day06 | StringExtension| 17.03.21 20:02 | 완료      |
| Day07 | MyView         | 17.03.22 01:27 | 완료      |
| Day08 | AutoLayout     | 17.03.25 03:55 | 완료      |
| Day08 | ViewController & JSON | 17.03.25 03:55 | 완료 |
| Day09 | camClient      | 17.03.25 03:55 | 완료      |
****

## Day01
#### CXPen 클래스를 만들자
    1. CXPen 객체를 구현하세요
    2. PenHolder 객체를 구현하세요

#### FileMatcher 클래스 구현하기
    1. 특정 경로의 모든 파일명을 배열로 받아오는 함수를 만들고, 해당 파일들 중에
    어떤 파일명을 가진 파일이 있는지 찾는 클래스를 만드세요.  
    2. 플러스 미션  
      • 파일명 순서대로 정렬을 하려면?  
      • 만약 찾아야 하는 파일이 여러 개라면?  
      • 특정 확장자(.doc) 파일 목록만 구하려면?

## Day02
#### CXMonamiPen 클래스를 만들자
    1. CXPen 를 상속받아 CXMonamiPen 클래스를 만드세요
    2. Red, Blue, Black 세부 클래스를 작성하세요.  
      • printDescription() 메서드를 override해서 세부 정보까지 모두
      나오록 하세요  
      • 세부 클래스 인스턴스를 만들어서 PenHolder에 추가하세요

## Day03
#### Date & Time
    1. 다음 역할을 하는 MyCalendar 클래스를 만드세요
      • 오늘 날짜의 년, 월, 일, 시, 분, 초를 튜플로 묶어서 리턴하는 함수  
      • 년월일 날짜를 문자열로 입력하면 Date 인스턴스를 리턴하는 함수  
      • 특정 년도, 월, 일을 Int로 입력하면 Date 인스턴스를 리턴하는 함수  
      • 오늘 날짜 Date 인스턴스를 입력하면 한국식 날짜 표기로 문자열을 리턴하는 함수  
      • 특정 년도와 특정 달을 입력하면 1일의 요일을 찾는 함수  
      • 특정 년도와 특정 달을 입력하면 일자를 주단위로 배열에 넣고,
        주단위 배열을 다시 배열에 넣어 2차원 배열로 리턴하는 함수

#### VendingMachine
    1. 자판기에 넣을 아래 음료수를 추상화해서 클래스 만드세요
      • (자기만의 기준으로) 클래스 이름을 정하세요  
      • 클래스 속성에 따라 상위, 하위 부류를 만들어보세요.  
      • 필수 속성 : 제조사(String), 용량(Int), 가격(Int), 이름(String),
        유통기한(Date)
    2. 앞서 만든 음료수를 관리하는 자판기 클래스를 만드세요  
      • 특정 음료를 추가하는 함수  
      • 전체 음료수 재고를 (사전으로 표현하는) 종류별로 리턴하는 함수  
      • 금액을 입력하면 구매가능한 음료 목록을 리턴하는 함수  
      • 특정 음료를 구매하면 잔액을 리턴하는 함수  
      • 실행 이후 구매한 음료 이름과 금액을 사전으로 추상화하고 전체 구매 목록을 배열로 리턴하는 함수

## Day04
#### Multi-Touches
    1. SecondViewControlle 클래스를 변경합니다  
      • View의 배경색을 원하는 색으로 지정합니다.  
      • touch 이벤트 핸들링으로 터치 시작점을 기준으로, 터치이후 움직이면 시작점에서 멀어질 수록 투명해지도록 만드세요.  
      • 손을 띄면 다시 원래대로 복원하세요.

## Day05
#### MyVending
    1. 자판기 “음료수 재고 데이터” 백그라운드가 될 때 저장  
      • 음료수 재고를 추가하는 건 저장된 재고 데이터가 없을 경우만!
      • 앱을 종료한 뒤에 다시 띄워서 재고 데이터를 복원해보세요.
    2. 화면에 음료수별로 [추가 버튼]을 만드세요.  
      • 추가 버튼을 누르면 해당 음료수 재고를 모델에 추가하세요.  
      • 모델은 재고가 추가될 때마다 전체 음료수 재고를 NotificationCenter에 post하세요.  
      • ViewController는 Observe하고 있다가 음료수 재고를 화면에 Label로 표시하세요.
    3. 음료수 클래스에 프로토콜 추가하기(Day06)  
      • Protocol Equatable 을 추가하고 구현하세요  
        func ==(lhs: Self, rhs: Self) -> Bool
      • 두 개의 음료수 인스턴스가 같은지 비교해보세요.  
      • 예) 콜라 vs 사이다, 콜라 vs 콜라
    4. 음료수 클래스에 NSCoding 프로토콜 추가하기(Day07)  
      • NSCoding을 위한 클래스는 NSObject에서 상속받아야 함  
      • Protocol NSCoding 을 추가하고 구현하세요
      • save할 때 객체를 data로 archive해서 저장하고  
      • load할 때 data로 가져와서 unarchive하세요.  
      -> 기존 UserDefault만으로 저장하는방식에서 Archive와 UserDefault를 같이 사용하여 객체를 저장하는 방식으로 변경됨

## Day06
#### StringExtension
    1. String 타입을 다음과 같이 확장하세요.  
      • 문자열 중에서 한글만 뜯어서 Array로 리턴하는 메서드를 추가하세요  
        "http://www.osxdev.org/forum/index.php?threads/swift-2-0에서-try-catch로-fatalerror-잡을-수-있나요.382/"
      • func filterHangulWord() -> [String]  
      • 예상 결과 : [ “에서”, “로”, “잡을”, “수”, “있나요” ]

## Day07
#### MyView
    1. 배경을 원하는 시작/종료색 gradient로 색칠해보세요.  
      • UIView에서 상속받는 MyView 클래스를 생성하고 IB에서 View의 클래스로 지정하세요.  
      • MyView 클래스 -drawRect: 를 새로 구현합니다.  
      • MyView 클래스의 -touchEnded:withEvent: 마다 랜덤하게 색을 바꿔서 다시 그려보세요  
      Hint : override func draw(_ rect: CGRect) {
                let context = UIGraphicsGetCurrentContext()  
                context?.drawLinearGradient(gradient!, start: startPoint, end: endPoint, options: [])
              }
    2. 터치할 때마다 배경색 위에 다음과 같은 path를 그려보세요  
      • 랜덤 시작점/끝점으로 Line 선 * 10개  
      • 랜덤 중점과 반지름으로 Arc 원 * 10개  
      • 랜덤 색으로 원을 색칠해보세요.

## Day08
#### AutoLayout
    1. Constraints  
      • storyboard에서 다음과 같이 UIView를 추가하세요.  
      • TopView, SplitView, BottomView  
      • 각 뷰에 Constraints를 추가하세요  
      • TopView는 상단 화면을 꽉 채우세요  
      • BottomView는 하단 화면을 꽉 채우세요  
      • SplitView는 TopView / BottomView 사이에서 너비 24x만큼 차지합니다.  
      • TopView 혹은 BottomView 에 Height를 지정하고  
      • 우선순위를 조정해서 화면 비율을 정하세요.  
      • 아이폰 화면 종류와 아이패드에서도 같은 비율로 나와야함
    2. Pan GestureRecognizer 추가  
      • SplitView에 Pan GestureRecognizer 추가하고  
      • SplitView를 움직일때 마다 지정한 Constraints에 따라서 자동적으로 TopView, BottomView 높이가 조절되야 함!  
    3. UIImageView 추가  
      • TopView에 StackView를 추가하고  
      • 좌우에 아래 이미지가 비율에 맞춰서 보이도록 처리  
      • SplitView를 움직여도 보이도록 함  
      • 추가미션:
         -최소 높이(80pt)를 지정하세요  
         -SizeClass를 이용해서 iPad에서만 BottomView에서
         아래 이미지가 보이도록 UIImageView 처리하세요

#### ViewController & JSON
    1. Image View  
      • First Tab에 보이는 FirstViewController를 다음과 같이 완성하세요.  
      • 상단에 [Picker] Button을 추가하고  
      • 버튼을 터치하면 카메라를 띄우고 사진을 촬영하면  
      • 하단에 ImageView에 촬영한 사진을 표시하세요.  
      • Hint : UIImagePickerControllerDelegate
    2. JSON Serialization  
      • 두번째 탭 SecondViewController viewDidLoad:에서  
      • 제시된 jsonData를 Serialization 해서 인스턴스 변수   
        jsonArray : Array[String:Any]로 저장하세요.
    3. PhotoDetailViewController  
      • 두번째 탭에서 NavigationController를 embed-in 하세요.  
      • 화면에 [Random] 버튼을 추가하세요.  
      • 버튼을 누르면 random하게 특정 index의 Dictionary를 꺼내서  
      • PhotoDetailViewController 속성으로 복사하고 PhotoDetailViewController를 Push하세요.  
      • PhotoDetailViewController 스토리보드 디자인 화면은 다음 슬라이드 참고하고, 이미지 파일들은 미리 프로젝트에 복사해놓으세요.

## Day09
#### camClient
    1. StreamTask로 서버 연동
      • insertNewObject: 에서 아래 서버 주소로 접속하고, 문자열을 받는다.
      • 받은 값으로 Date 인스턴스를 만들고 테이블뷰에 추가하도록 코드를 대체한다.
      • 서버 접속 주소는 맥북 IP 또는 127.0.0.1 포트는 7000
      • telnet 127.0.0.1 7000 명령으로 테스트 가능
        var task = session.streamTask(withHostName: "127.0.0.1", port: 7000)
    2. Cam Viewer 구현하기
      • DetailViewController에 UIImageView를 추가하고 IBOutlet 연결한다.
      • DetailViewController viewDidLoad:에서 NSURLSession streamTask 방식으로 8000포트에 접속한다
      • 응답 패킷 구성 = 8byte 숫자 (image data length) + Image Data
      • 우선 8바이트 패킷을 받아서 (Int 타입) 이미지 길이로 바꾸고,
      • 받고 남은 길이만큼 나머지 Data를 받으세요.
      • 받은 Data로 UIImage 인스턴스를 생성해서 UIImageView에 표시하세요.
      플러스 미션
      • 화면에 Image가 갱신될 때마다 서버로 “ACK”를 write하세요
    3. Reachability 클래스로 인터넷 연결 여부를 판단하세요
      • Reachability.m 또는 Alamofire 를 프로젝트에 추가하세요.
      • 인터넷에 연결됐는지 판단해서 연결된 경우,
      • 첫 화면의 배경색을 UIColor.green 으로 표시하고
      • 연결이 안되어 있는 경우 배경색을 UIColor.red 로 표시하세요.
