# park_location_app

주차 위치 공유 앱

## 요구사항 분석
사용자가 차량을 공유 사용시 차량 주차 위치를 공유한다

### UI/UX
주차 위치가 마커로 표시된 화면

![](https://github.com/pswon5894/park_location_app/blob/master/%EC%B4%88%EA%B8%B0%20%ED%99%94%EB%A9%B4.jpg)앱 초기화면 | ![](https://github.com/pswon5894/park_location_app/blob/master/%EA%B3%B5%EC%9C%A0%20%EC%8B%9C%EB%8F%84.jpg)링크 공유 | ![](https://github.com/pswon5894/park_location_app/blob/master/%EA%B3%B5%EC%9C%A0%20%EB%A7%81%ED%81%AC.jpg)링크 작동
---|---|---|

### 사용 시나리오

켜면 지도가 나오는 화면

위치 버튼을 누르면 현재 위치가 지도에 마크 표시됨

공유 버튼으로 링크를 만들어 보내

구글맵스에서 현재 위치를 볼수 있음

#### 기타

https://docs.fleaflet.dev/

Flutter Map은 leaflet기반으로 구성되어있는 지도를 그려주는 라이브러리입니다.

Leaflet이란?

Leaflet은 다음과 같은 특징을 가진 오픈 소스 JavaScript 라이브러리입니다:

웹 페이지에 상호작용이 가능한 지도를 쉽게 삽입할 수 있습니다. [1]

OpenStreetMap과 같은 다양한 배경 지도 서비스를 사용할 수 있습니다. [3]

마커, 팝업, 레이어 등 다양한 지도 요소를 추가할 수 있습니다. [3]

데이터프레임을 활용하여 효율적으로 여러 개의 마커를 추가할 수 있습니다. [3]

마커의 모양을 Circle이나 Awesome Marker 등으로 변경할 수 있습니다. [3]

Leaflet의 활용

Leaflet은 다음과 같은 분야에서 널리 활용됩니다:

웹 사이트나 웹 애플리케이션에 지도 기능을 추가하고자 할 때

지리 정보 시각화를 위한 데이터 매핑 프로젝트

위치 기반 서비스 개발

지도 기반 데이터 분석 및 시각화

Leaflet은 가볍고 사용이 간편하며, 다양한 플러그인과 확장 기능을 제공하여 개발자들에게 인기 있는 라이브러리입니다. 특히 웹 개발 분야에서 널리 활용되고 있습니다.

Leaflet의 장점

Leaflet의 주요 장점은 다음과 같습니다:

오픈 소스로 무료로 사용할 수 있습니다.

가볍고 빠르며, 모바일 환경에서도 잘 작동합니다.

다양한 플러그인과 확장 기능을 제공하여 개발 유연성이 높습니다.

크로스 브라우저 지원이 뛰어나 호환성이 좋습니다.

활발한 커뮤니티와 풍부한 문서 자료가 있어 개발이 용이합니다.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
