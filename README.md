# SignUp

## HIG란

+ HIG(Human Interface Guidelines)
  + HIG 문서는 애플리케이션을 개발할 때 필요한 디자인과 동작을 포함한 여러 규칙을 통하여 사용자 인터페이스를 어떻게 구성하는 방법에 대한 지침을 제시
  + HIG 문서의 가이드라인을 따라 인터페이스를 작성하면 사용자들로 하여금 새로운 애플리케이션을 처음 접하더라도 대부분의 iOS 사용자에게 익숙한 환경을 제공할 수 있음
+ HIG 문서를 읽어야 하는 이유
  + 애플리케이션을 설계할 때 사용자와 상호작용에 관해 생각하고 설계할 수 있음
  + 개발자가 아닌 사용자의 입장에서 애플리케이션을 바라보고 설계할 수 있음
  + 애플리케이션의 일관성을 유지할 수 있음
  + 기획자 디자이너 등 협업에 있어 기준점을 제시하여 협업의 효율을 높일 수 있음
  + 이미 사용자에게 익숙한 환경을 제공하여 새로운 애플리케이션 사용의 진입장벽을 낮출 수 있음
  + 이미 검증된 사용자 경험을 이해하고 그것을 토대로 조금 더 유연한 사용자 경험을 설계할 수 있음
+ HIG의 내용 구성
  + Overview
    + iOS 플랫폼 테마의 특징과 인터페이스 요소에 관한 개요
    + iOS의 버전이 업데이트 되면 새로운 iOS버전의 특징과 변화에 관해서도 설명
  + App Architecture
    + 애플리케이션 아키텍처 설계 시 고려해야 할 사항을 설명
  + User Interface
    + 애플리케이션이 사용자와 상호작용하는 동작 설계 시 고려해야 할 사항을 설명
  + System Capabilities
    + 시스템이 지원하는 여러 시스템 기능과 각 기능에 대해 설계 시 고려해야 할 사항 설명
  + Visual Design
    + 애플리케이션의 시작적인 요소 설계 시 고려해야 할 사항 설명
  + Icons and Images
    + iOS에서 이미지, 아이콘, 시작화면에 관한 내용과 지침에 관한 내용을 설명
  + Bars
    + iOS에서 사용하는 바의 각 역할과 용도에 관한 설명과 각 바를 구현할 때 고려해야 할 사항에 관한 내용
  + Views
    + 뷰의 종류와 역할에 관해 설명하고 뷰 설계 시 고려해야 할 사항에 관한 내용
  + Controls
    + 여러 가지 컨트롤 요소들에 관한 소개와 설계 시 고려해야 할 사항들에 관한 내용
  + Extensions
    + 여러 가지 확장기능을 소개하고 확장 기능을 사용하는 애플리케이션 설계 시 고려해야 할 사항들에 관해 설명
  + Technologies
    + 여러 기술을 구현할 수 있는 Kit에 관해 설명하고 해당 Kit 사용 시 설계지침에 관한 내용
  + Resources
    + OS를 포함한 애플의 플랫폼들에 대한 자원 제공에 관한 내용

+ 네비게이션 인터페이스

  + 네이게이션 인터페이스란
    + iOS에서 네비게이션 인터페이스는 주로 계층적 구조의 화면전환을 위해 사용되는 드릴 다운 인터페이스(Drill-down-Interface)이다
    + 드릴 다운 인터페이스란 각 선택할 수 있는 항복에 대한 세부항목이 존재하는 인터페이스
    + 네이게이션 인터페이스는 네비게이션 컨트롤러를 통해 구현한다
  + 네비게이션 컨트롤러
    + 컨테이너 뷰 컨트롤러로써(Container View Controller) 네비게이션 스택(Navigation Stack)을 사용하여 다른 뷰 컨트롤러를 관리
    + 네비게이션 스택에 담겨서 컨텐츠를 보여주게 되는 뷰 컨트롤러들을 컨텐트 뷰 컨트롤러(Content view Controller)라고 함
    + 네비게이션 컨트롤러는 두 개의 뷰를 화면에 표시 한다
    + 하나는 네비게이션 스택뷰에 포함된 최상위 컨텐트 뷰 컨트롤러의 컨텐츠를 나태는 뷰와 네비게이션 컨트롤러가 직접 관리하는 뷰(네비게이션 바 또는 툴바)가 있다
    + 추가로 네비게이션 인터페이스의 변화에 따른 특정 액션을 동작하도록 하기 위해 네비게이션 델리게이트 객체를 사용할 수 있다
  + 네비게이션 스택이란
    + 네비게이션 컨트롤러에 의해 관리되는 네비게이션 스택(Navigation Stack)은 뷰 컨트롤러를 담을 수 있는 배열과도 같다
    + 네비게이션 스택에 가장 하위에 있는(가장 먼저 스택에 추가된) 뷰 컨트롤러는 네비게이션 컨트롤러의 루트 뷰 컨트롤러(Root View Controller)가 된다
    + 루트 뷰 컨트롤러는 네비게이션 스택에서 팝(Pop)되지 않는다
    + 네비게이션 스택의 가장 사우이에 있는(가장 마지막에 푸시된)뷰 컨트롤러는 최상위 뷰 컨트롤러로 화면에 보이게 된다
    + 네비게이션 스택은 푸시/팝을 통하여 아이템(뷰 컨트롤러)을 관리한다
    + 새로운 뷰 컨트롤러를 네비게이션 스택에 푸시하거나 네비게이션 스택에 있는 뷰 컨트롤러를 삭제하기 위해 팝을 사용
    + 네비게이션 스택에 푸시된 뷰 컨트롤러들은 애플리케이션에 자신이 가지고 있는 뷰 계층 구조를 통해 컨텐츠를 표시
  + 네비게이션 스택에서의 화면이동
    + UINavigationController 클래스의 메서드 또는 세그(segue)를 사용하여 네비게이션 스택의 뷰 컨트롤러를 추가/삭제할 수 있다
    + 또한, 애플리케이션 실행 중 사용자가 네비게이션 인터페이스의 뒤로가기(back) 버튼을 사용하거나 화면의 왼쪽 가장자리를 스와이프(Swipe)하여 스택에 있는 최상위 뷰 컨트롤러를 삭제하고 그 아래에 가려져 있던 뷰 컨트롤러의 컨텐츠를 보여줄 수 있다
    + 세그(segue)는 스토리보드에서 한 화면에서 다른 화면으로의 전환을 말한다
    + 세그도 내부적으로 UINavigationController 클래스의 메서드를 사용한다
  + UINavigationController 클래스
    +  네비게이션 컨트롤러의 생성
      + init(rootViewController: UIViewController)
        + 네비게이션 컨트롤러의 인스턴스를 생성하는 메서드
        + 매개변수로 네비게이션 스택의 가장 아래에 있는 루트 뷰 컨트롤러가 될 뷰 컨트롤러를 넘겨줌
    + 네비게이션 스택의 뷰 컨트롤러의 접근
      + var topViewController: UIViewController?
        + 네비게이션 스택에 있는 최상위 뷰 컨트롤러에 접근하기 위한 프로퍼티
      + var visibleViewControlelr: UIViewController?
        + 현재 네비게이션 인터페이스에 보이는 뷰와 관련된 뷰 컨트로럴에 접근하기 위한 프로퍼티
      + var viewController:[UIViewController]
        + 네비게이션 스택에 특정 뷰 컨트롤러에 접근하기 위한 프로퍼티(루트 뷰 컨트롤러의 인덱스는 0)
    + 네비게이션 스택의 푸시와 팝에 관한 메서드
      + func pushViewController(UIViewController, animated: Bool)
        + 뷰를 푸시
      + func popViewController(animated: Bool) -> UIViewController?
        + 최상위 뷰를 팝
      + func popToRootViewController(animated: Bool) -> [UIViewController]?
        + 루트 뷰 컨트롤러를 제외한 모든 뷰 컨트롤러를 팝
      + func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
        + 특정 뷰 컨트롤러가 네비게이션 스택에 최상위 뷰 컨트롤러가 되기 전까지 상위에 있는 뷰 컨트로러를 팝
  + 네비게이션바의 구성
    + 네비게이션 바는 네비게이션 컨트롤러에 의해 생성
    + 네비게이션 바는 네비게이션 컨트롤러의 관리를 받는 모든 뷰 컨트롤러 상단에 표시
    + 최상위 뷰 컨트롤러가 변경될 때마다 네비게이션 컨트롤러는 네비게이션 바를 업데이트
    + 구조
      + 네비게이션바는 네비게이션 인터페이스 상단에 표시
      + 네비게이션 아이템을 가질 수 있음
      + 뷰 컨트롤러가 전환될 때마다 네비게이션바의 컨텐츠들이 바뀌지만 네비게이션 바 자체는 네비게이션 컨트롤러가 관리하는 하나의 공통 객체
      + 네비게이션바의  타이틀을 통해 현재의 위치를 알 수 있음

+ 모달

  + 모달이란?
    + 모달(modal)은 사용자의 이목을 끌기 위해 사용하는 화면전화 기법이다
    + 화면을 다른 화면 위로 띄워(Presenting) 표현하는 방식
    + 모달로 보이는 화면을 사라지게 하려면 반드시 특정 선택을 해야하는 특징이 있음
    + 네비게이션 인터페이스로 화면을 표현하는 것과는 용도가 완전히 다르다
    + 모달로 보이는 화면은 되도록 단순하고 사용자가 빠르게 처리할 수 있는 내용을 표현
  + Presenting a view controller
    + 뷰 컨트롤러를 화면에 나타내는 방벙은 두 가지이다. 네비게이션 컨트롤러에 인베드하거나 프레젠테이션을 통해서 나타낼 수 있다
    + 뷰 컨트롤러의 나타내기(present) 지원 기능은 "UIViewController" 클래스에 내장되어 있으며 모든 뷰 컨트롤러 객체에서 사용 가능
    + 뷰 컨트롤러를 나타내면 원래 뷰(presenting)와 새롭게 나타난 뷰(presented)간의 관계가 생성된다
    + 이 관계를 뷰 컨트롤러 계층의 일부를 형성하며, 나타나느 뷰 컨트롤러가 사라질(dismissed)때까지 그대로 유지 된다
  + 프레젠테이션 및 전환 프로세스(The Presentation and Transition Process)
    + 새로운 컨텐츠를 애니메이션으로 표시할 수 있는 쉽고 빠른 방법
    + 프로그래밍 방식 또는 세그(segues)를 사용하여 구현 가능
  + 프레젠테이션 스타일(Presentation Style)
    + 커스텀 프레젠테이션 스타일 정의 가능
    + modalPresentationStyle 프로퍼티에 적절한 상수를 할당하면 된다
    + 전체화면 프로젠테이션 스타일(Full-Screen Presentation Style)
      + 전체화면으로 아래의 기본 컨텐츠와의 상호 작용을 방지
      + 가로 모드에서는 전체화면 스타일 중 단 하나만이 기본 컨텐츠를 완전히 커버가능
    + 팝오버 스타일(The Popover Style)
      + UIModalPresentationPopover스타일은 팝오버뷰로 나타냄
      + 추가 정보, 포커스, 선택한 객체와 관련된 항목을 표시하는데 유용
      + 팝업뷰 외부에 탭을 하면 팝업을 닫는다(dismiss)
    + 현재 컨텍스트 스타일(The Current Context Styles)
      + UIModalPresentationCurrentContext 스타일은 아래 뷰 컨트롤러의 컨텐츠 영역에 컨텐츠를 올리는 형태
    + 커스텀 프레젠테이션 스타일(Custom Presentation Styles)
      + UIModalPresentationCustom스타일을 사용하면 정의한 커스텀 스타일을 사용하여 뷰 컨트롤러에 표시할 수 있음
      + 커스텀 스타일을 생성하는 것은 UIPresentationController를 상속받아 그 메서드를 사용하여 커스텀 뷰를 화면 상에 애니메이션으로 나타내고 표시된 뷰 컨트롤러의 크기와 위치를 설정하는 것
    + 전환 스타일(Transition Styles)
      + 전환 스타일은 뷰 컨트롤러를 표시하는데 사용하는 애니메이션 유형을 결정
      + 기본적으로 제공되는 전환 스타일의 경우 표시할 뷰 컨트롤러의 modalTransitionStyle 프로퍼티에 지정할 수 있다
      + 뷰 컨트롤러를 표시할 때, UIKit은 해당 스타일에 맞는 애니메이션을 생성
      + UIModalTransitionStyleCoverVertical 이 뷰 컨트롤러를 화면 상에서 어떻게 애니메이션으로 나타내는 지 알 수 있다
      + 뷰 컨트롤러 B는 화면 밖에서 시작해서 애니메이션을 통해 뷰 컨트롤러 A의 위쪽 상단까지 커버한다
      + 뷰 컨트롤러 B가 사라지면 애니메이션 또한 반전되어 B가 아래로 슬라이드되어 A가 드러나게 된다
      + 애니메이션 객체와 전환 델리게이트(transitioning delegate)를 사용하여 커스텀 전환 과정을 생성할 수 있다

  + 뷰 컨트롤러를 나타내기 VS 보여주기(Presention VS Showing a View Controller)
    + showViewController: sender:와 showDetailViewController: sender:메섣는 뷰 컨트롤러를 표시하는 데에 가장 적응성이 우수하고 유연한 방법을 제공
    + 이러한 메서드를 사용하면 나타내는 뷰 컨트롤러(presenting view controller)가 프레젠테이션을 가장 잘 처리할 방법을 결정할 수 있다
    + 컨테이너뷰 컨트롤러는 뷰 컨트롤러를 모달 방식으로 표시하는 대신, 이를 서브뷰로 통합할 수 있다
    + 기본 동작은 뷰 컨트롤러를 모달 방식으로 표시
    + presentViewController: animated: completion: 메서드는 뷰 컨트롤러를 항상 모달 방식으로 표시
    + 이 메서드를 호출하는 뷰 컨트롤러는 궁극적으로 프레젠테이션을 처리하지 못할 수도 있으나, 프레젠테이션은 항상 모달 방식을 채택한다

+ 뷰의 상태변화 감지 메서드

  + 뷰가 화면에 보여지는 상태의 변화나 뷰의 레이아웃에 변화가 생기면 뷰 컨트롤러는 여러가지 메서드를 호출해 서브클래스가 적절한 대응을 할 수 있게 한다
  + func viewDidLoad()
    + 뷰 계층이 메모리에 로드된 직후 호출되는 메서드
    + 뷰의 추가적인 초기화 작업을 하기 좋은 시점
    + 메모리에 처음 로딩 될때 1회 호출되는 메서드로, 메모리 경고로 뷰가 사라지지 않는 이상 다시 호출되지 않음
  + func viewWillAppear(_ animated: Bool)
    + 뷰가 뷰 계층에 추가되고 화면이 표시되기 직전에 호출되는 메서드
    + 뷰의 추가적인 초기화 작업을 하기 좋은 시점
    + 다른 뷰로 이동했다가 되돌아오면 재호출되는 메서드로, 화면이 나타날때마다 수행해야하는 작업을 하기 좋은 시점
  + func viewDidAppear(_ animated: Bool)
    + 뷰가 뷰 계층에 추가되어 화면이 표시되면 호출되는 메서드
    + 뷰를 나타내는 것과 관련된 추가적인 작업을 하기 좋은 시점
  + func viewWillDisappear(_ animated: Bool)
    + 뷰가 뷰 계층에서 사라지기 직전에 호출되는 메서드
    + 뷰가 생성된 뒤 발생한 변화를 이전상태로 되돌리기 좋은 시점
  + func viewDidDisappear(_ animated: Bool)
    + 뷰가 뷰 계층에서 사라진 후 호출되는 메서드
    + 뷰를 숨기는 것과 관련된 추가적인 작업을 하기 좋은 시점
    + 시간이 오래 걸리는 작업은 하지 않는 것이 좋음
  + 뷰의 레이아웃 변화 메서드
    + 뷰가 생성된 후 바운드 및 위치 등의 레이아웃에 변화가 발생했을 때 호출되는 메서드
      + func viewWillLayoutSubviews()
        + 뷰가 서브뷰의 레이아웃을 변경하기 직전에 호출되는 메서드
        + 서브뷰의 레이아웃을 변경하기 전에 수행할 작업을 하기 좋은 시점
      + func viewDidLayoutSubviews()
        + 서브뷰의 레이아웃이 벼경된 후 호출되는 메서드
        + 서브뷰의 레이아웃을 변경 한 후 추가적인 작업을 수행하기 좋은 시점
      + 그외
        + func viewLayoutMarginsDidChange()
        + func viewSafeAreaInsetsDidChange()
        + func updateViewConstraints()
        + 