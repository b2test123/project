// 변수 설정
let topTopMenu = document.querySelector(".top-top-menu");
let miniShortcut = document.querySelector(".mini-shortcut");
let topBottomMenu = document.querySelector(".top-btm-menu");
let addUl = document.createElement("ul");
let addLi = document.createElement("li");
let addA = document.createElement("a");
let addInput = document.createElement("input");

addMsShortcut();
addTtmMenu();
addtbMenu();

function addMsShortcut(){
    let addUl = document.createElement("ul");
    addUl.className = "ms-list";
    
    // 배열사용 목록 정의
    let itemList = [
        {text: "youtube", link: "https://www.youtube.com", target: "_black"},
        {text: "instagram", link: "https://www.instagram.com", target: "_black"},
        {text: "twitter", link: "https://www.twitter.com", target: "_black"}
    ];

    // 각 항목 목록에 추가
    itemList.forEach(function(item) {
        let addLi = document.createElement("li");
        let addA = document.createElement("a");
        addA.href = item.link;
        addA.textContent = item.text;
        addA.target = item.target;

        addLi.appendChild(addA);
        addUl.appendChild(addLi);
    })
    // div에 추가
    miniShortcut.appendChild(addUl);
}

function addTtmMenu(){
    let addUl = document.createElement("ul");
    addUl.className = "ttm-list";
    let itemsList = [
        { text: "JOIN", link: "/join.do" },
        { text: "LOG-IN", link: "/login.do" },
        { text: "MY-PAGE", link: "/mypage.do" },
        { text: "BASKET", link: "/basket.do" },
        { text: "ORDER-INQUIRY", link: "/orderinquiry.do" },
        { text: "BOARD", link: "/board.do" }
    ];

    itemsList.forEach(function(item) {
        let addLi = document.createElement("li");
        let addA = document.createElement("a");
        addA.href = item.link;
        addA.textContent = item.text;

        addLi.appendChild(addA);
        addUl.appendChild(addLi);
    });

    // 검색창 설정
    addInput.type = "text";
    addInput.id = "search";
    addLi.appendChild(addInput);
    addLi.innerHTML += " 🔍";

    // 검색창 목록에 추가
    addUl.appendChild(addLi);

    topTopMenu.appendChild(addUl);
}   

function addtbMenu(){
    let addUl = document.createElement("ul");
    addUl.className = "tbm-list";

    let itemsList = [
        {title: "강이지 먹거리", link: "Dfood", items: ["사료", "간식", "영양제"]},
        {title: "강이지 용품", link: "Dthings", items: ["집", "장난감", "밥그릇", "옷", "산책용품"]},
        {title: "고양이 먹거리", link: "Cfood", items: ["사료", "간식", "영양제"]},
        {title: "고양이 용품", link: "Cthings", items: ["집", "장난감", "밥그릇", "옷", "방콕용품"]},
        {title: "햄스터 먹거리", link: "Hfood", items: ["사료", "간식", "영양제"]},
        {title: "햄스터 용품", link: "Hthings", items: ["집", "장난감", "밥그릇", "챗바퀴", "이갈이"]},
        {title: "이벤트 상품", link: "eventproduct", items: ["기간 할인 상품", "신상품 할인 이벤트", "시즌 한정 상품"]}
    ]

    itemsList.forEach(function(menu){
        let addLi = document.createElement("li");
        let addA = document.createElement("a");
        addLi.className = "tbm-list-li";
        addA.textContent = menu.title;
        addA.href = menu.link;

        let subMenuUl = document.createElement("ul");
        subMenuUl.className = "sub_menu"

        menu.items.forEach(function(item){
            let addSubLi = document.createElement("li");
            let addSubA = document.createElement("a");
            
            addSubA.href = "#";
            addSubA.textContent = item;

            subMenuUl.appendChild(addSubLi);
            addSubLi.appendChild(addSubA);
        })
        addLi.appendChild(addA);
        addLi.appendChild(subMenuUl);
        addUl.appendChild(addLi);
    })
    topBottomMenu.appendChild(addUl);
}