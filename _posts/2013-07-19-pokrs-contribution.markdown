---
layout: post
title: "포커(Pokr)가 국회 의안정보시스템과 다른게 뭐죠?"
date: 2013-07-19 12:00
comments: true
categories: [ko]
author: echojuliett
---

어느덧 [포커(Pokr)](http://pokr.kr) 베타오픈을 한 지 40여 일이 지났습니다.<br>
그 동안 [이메일](mailto:contact@popong.com), [트위터](http://twitter.com/teampopong), [페이스북](http://facebook.com/teampopong), [피드백 포럼](http://teampopong.uservoice.com) 등을 통해 국내외에서 수없이 많은 관심과 응원을 받았고, [페이스북 라이크도 1K를 달성했습니다](/2013/07/13/weve-reached-1k-pokr-likes/).

오늘은 저희가 받은 많은 질문 중 의미있는 것을 한 가지를 꼽아, 공개답변을 드리도록 하겠습니다.<!-- more -->

> 그래서...
> 이미 옛날부터 있던 의안정보시스템보다 나은 게 뭐죠?

질문을 받고 다소 당황하기는 했지만, 아주 중요한 문제제기라고 생각합니다.<br>
실제로 팀포퐁도 포커를 기획하면서 정확히 같은 고민을 항상 했습니다.<br>
이와 관련해서 저희가 생각했던 포커의 차별점과, 차후 계획을 말씀드리면 저희가 의도했던 포커의 의미를 더 잘 전달할 수 있을거라 생각됩니다.

## 포커, 이것이 특별하다!

### 1. 데이터 간 유기적 연결성 (Data interlinking)

{% img center /images/2013-07-19-likms.png 600 %}
<div class="caption center">
국회 의안정보시스템에 게시된 2013년 7월 19일자 원자력안전법 일부개정법률안
(<a href="http://likms.assembly.go.kr/bill/jsp/BillDetail.jsp?bill_id=PRC_T1D3K0Y7O1C9G1E1R4W2S0B4I6M4V5&list_url=/bill/jsp/LatestReceiptBill.jsp">국회에서 보기</a>)
</div>

당장 국회의 의안정보시스템과 다른 점은 "데이터 간 링크"입니다.
아직까지 국회 홈페이지의 [의안정보시스템](http://likms.assembly.go.kr/bill/)에서 특정 의안에 대해 검색하면 위 화면캡쳐에서처럼 발의자 명단을 볼 수 있지만, 실제로 발의자가 어떤 사람인지 확인해볼 수 있는 링크는 없습니다. [^5] 만일 유권자들이 4년마다 한 번씩 바뀌는 300여 명 국회의원들의 이름만 보고도 발의한 사람이 누군지 알 수 있다면 문제가 되지 않겠지만, 그러기는 쉽지 않을 것이라고 생각합니다.

따라서 팀포퐁은 의안에 대한 발의자 데이터를 가져온 후, 현재 국회에 있는 의원들의 이름과 매칭(matching)하는 작업을 가장 먼저 했습니다.[^3]
이 때문에 포커에서는, 국회의원 페이지에서 그가 발의한 의안 페이지로 이동하고, 다시 의안 페이지에서 다른 의원 페이지로, 의원 소속 지역구 페이지로, 넘실넘실 이동할 수 있는 것입니다.

{% img center /images/2013-07-19-pokr.png 600 %}
<div class="caption center">
포커(Pokr)에 게시된 2013년 7월 19일자 원자력안전법 일부개정법률안
(<a href="http://pokr.kr/bill/1906067">포커에서 보기</a>)
</div>

### 2. 인물을 기준으로 자료 통합 (Data aggregation)

국회 모니터링, 즉 국회 활동을 지켜보고자 할 때는 특정 의원이 어떠한 의안을 발의하는지가 중요한 정보입니다.
국회 홈페이지의 [국회의원 현황](http://www.assembly.go.kr/renew10/mem/mem/mem_search.jsp) 메뉴에서도 의원들의 대표발의 내역을 열람해볼 수 있지만,
현 19대 국회에 대한 데이터만 제공하고 있기 때문에 차후 선거 등에서 유권자가 투표권을 행사할 때 판단근거가 부족할 수 있습니다.[^2]

그러한 관점에서 포커는,

- 국회의원 선거에 출마한 후보자 전체에 대해 데이터를 병합하고
- 당선자의 역대 국회 활동 내역 전체를 통합하고
- 의원의 대표발의 내역 뿐 아니라 공동발의 내역도 열람할 수 있게 하였습니다.


### 3. 그 외
 외에도 포커는 아래와 같은 점들에 신경을 썼습니다.

- 모바일 호환성 보장 (Mobile compatibility)
- 데이터에 기계적 가독성 부여 (Machine readable formats)
- 의미있는 링크 주소 부여 (Descriptive URLs)
- 정치 컨텐츠의 영문화 (i18n)[^1]

## 이제 포커가 나아갈 방향

베타 오픈을 한 이후 많은 피드백을 통해, 포커가 나아갈 방향을 정리할 수 있게 되었습니다. 앞으로 다음의 세 가지 기능에 포커스해서 서비스를 발전시킬 예정입니다.

1. 나열된 데이터를 의미있는 정보로 변환 (통계, 시각화 등)
2. 3rd party app의 가능성을 낳기 위한 정치 데이터 API 제공
3. 내가 관심 가지고 있는 의원, 의안, 주제에 대한 맞춤형 정보를 구독해볼 수 있는 my page 제공

위의 기능들이 더 좋은 방향으로 발전하기 위해서는 유저분들의 많은 피드백이 필요합니다. 그러니 비판과 칭찬, 더 멋진 서비스가 되기 위한 아이디어, 아끼지 말고 많이 부탁드리겠습니다!

<center>
<a href="http://teampopong.uservoice.com"><div style="background: #EEE; padding: 10px; margin-top: 20px;">포커에 피드백 주러가기</div></a>
</center>

[^1]: 대한민국 정치 데이터에 대한 국제적 접근성을 높이기 위함.
[^2]: 이러한 상황에 대해 저희 팀에서는, "모든 재료가 완비되어 있으니 이제 맛있게 요리만 하면 된다"는 표현을 자주 사용합니다. 차후 이 재료의 질(ex: 동명이인 처리 문제)이나 적합성(ex: 기계적으로 처리할 수 없는, 상업적/폐쇄적 형태의 포맷 사용) 등에 대해서는 따로 포스팅 할 예정입니다.
[^3]: [여기에서](https://github.com/teampopong/pokr/blob/master/scripts/insert_candidacies.py#L150) 관련 파이썬 코드를 보실 수 있습니다.
[^5]: [국민 신문고](http://www.epeople.go.kr/)를 통해 국회사무처가 본 기능을 적용하도록 요구할 수 있습니다.
