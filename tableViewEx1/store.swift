//
//  store.swift
//  tableViewEx1
//
//  Created by 여누 on 6/1/24.
//

struct Store {
    let title: String
    let address : String
    let category : String
}

struct StoreList {
    static var store: [Store] = [
        Store(title: "스타벅스 신림점",
              address: "서울 관악구 신림로 355-1",
              category: "카페"),
        Store(title: "메가커피 양지병원점",
              address: "서울 관악구 남부순환로 1649 1층 102호",
              category: "카페"),
        Store(title: "비엔나커피 신림점",
              address: "서울 관악구 신림로 363 1,2,3층",
              category: "카페"),
        Store(title: "데이굿",
              address: "서울특별시 관악구 신원로 10 남영빌딩 2층 202호",
              category: "카페"),
        Store(title: "모리츠",
              address: "서울 관악구 남부순환로 1711",
              category: "카페"),
        Store(title: "스타벅스 봉천역점",
              address: "서울 관악구 남부순환로 1730",
              category: "카페"),
        Store(title: "캔시플",
              address: "서울 관악구 남부순환로 1795 가동 1층 105호",
              category: "카페"),
        Store(title: "봉천역",
              address: "서울특별시 관악구 남부순환로 1721",
              category: "지하철역"),
        Store(title: "신림역",
              address: "서울특별시 관악구 남부순환로 1614",
              category: "지하철역"),
        Store(title: "당곡역",
              address: "서울특별시 관악구 봉천동",
              category: "지하철역"),
        Store(title: "서울대입구역",
              address: "서울특별시 관악구 남부순환로 1822 서울대입구역사",
              category: "지하철역"),
        Store(title: "낙성대역",
              address: "서울특별시 관악구 남부순환로 1928",
              category: "지하철역"),
        Store(title: "메가박스 이수",
              address: "서울특별시 동작구 동작대로 89 (사당동, 골든시네마타워 7층)",
              category: "영화관"),
        Store(title: "롯데시네마 신림",
              address: "서울특별시 관악구 신림로 330(신림동) 타임스트림(구 포도몰) 10층-15층",
              category: "영화관"),
        Store(title: "롯데시네마 서울대입구",
              address: "서울특별시 관악구 남부순환로 1820 (봉천동, 에그옐로우 10층)",
              category: "영화관"),
        Store(title: "CGV강남",
              address: "서울특별시 강남구 강남대로 438 (역삼동, 스타플렉스)",
              category: "영화관"),
        Store(title: "CGV용산",
              address: "서울특별시 용산구 한강대로23길 55 (한강로동, HDC아이파크몰 6층)",
              category: "영화관"),
        Store(title: "홍콩반점0410 신림역점",
              address: "서울특별시 관악구 남부순환로 1588 2층",
              category: "식당"),
        Store(title: "네네치킨 봉천현대점",
              address: "서울 관악구 봉천로 441",
              category: "식당"),
        Store(title: "굽네치킨 신림동점",
              address: "서울 관악구 신림동길 27",
              category: "식당"),
        Store(title: "고기박사",
              address: "서울 관악구 남부순환로 1633 1층 고기박사",
              category: "식당"),
        Store(title: "킷사서울",
              address: "서울 관악구 남부순환로226길 31 2층 킷사서울",
              category: "식당")
    ]
}
