let mainPic = ["img/main-pic1.jpg", "img/main-pic2.jpg", "img/main-pic3.jpg", "img/main-pic4.jpg", "img/main-pic5.jpg"];
let picIdx = 0;
let mainProdPic = document.querySelector(".main-prod-pic");
let selPic = [".pic1", ".pic2", ".pic3", ".pic4", ".pic5"];


updateButtonStyles();

function updateButtonStyles() {
    document.querySelector(selPic[picIdx]).style.background="#aa4";
    document.querySelectorAll('.main-pic-button button:not(' + selPic[picIdx] + ')').forEach(button => {button.style.background = "#ffc"});
}

function showSlide() {
    mainProdPic.src = mainPic[picIdx];
    picIdx++;
    if(picIdx == mainPic.length){
        picIdx = 0;
    }
    setTimeout(showSlide, 3000);
    updateButtonStyles();
}

function nextSlide() {
    mainProdPic.src = mainPic[picIdx];
    picIdx++;
    if(picIdx == mainPic.length){
        picIdx = 0;
    }
    updateButtonStyles();
}

function beforeSlide() {
    mainProdPic.src = mainPic[picIdx];
    if(picIdx == 0){
        picIdx = mainPic.length;
    }
    picIdx--;
    updateButtonStyles();
}

function selectPic(i) {
    mainProdPic.src = mainPic[i];
    picIdx = i;
    updateButtonStyles();
}


