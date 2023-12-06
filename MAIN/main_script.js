let mainPic = ["img/main-pic1.jpg", "img/main-pic2.jpg", "img/main-pic3.jpg", "img/main-pic4.jpg", "img/main-pic5.jpg"];
let picIdx = 0;
let mainProdPic = document.querySelector(".main-prod-pic");
let selPic = [".pic1", ".pic2", ".pic3", ".pic4", ".pic5"];

showSlide();


function showSlide() {
    mainProdPic.src = mainPic[picIdx];
    picIdx++;
    if(picIdx == mainPic.length){
        picIdx = 0;
    }
    setTimeout(showSlide, 3000);
}

function nextSlide() {
    mainProdPic.src = mainPic[picIdx];
    picIdx++;
    if(picIdx == mainPic.length){
        picIdx = 0;
    }
}

function beforeSlide() {
    mainProdPic.src = mainPic[picIdx];
    picIdx--;
    if(picIdx == 0){
        picIdx = mainPic.length-1;
    }
}

function selectPic(i) {
    mainProdPic.src = mainPic[i];
}