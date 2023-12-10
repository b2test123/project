// 변수 설정
let topTopMenu = document.querySelector(".top-top-menu");
let miniShortcut = document.querySelector(".mini-shortcut");
let addUl = document.createElement("ul");
let addLi = document.createElement("li");
let addA = document.createElement("a");
let addInput = document.createElement("input");

addMsShortcut();
addTtmMenu();

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