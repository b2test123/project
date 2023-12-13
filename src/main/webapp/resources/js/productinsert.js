/**
 * 
 */
function checkMember(){
	//input의 name 속성을 변수에 저장
	let form = document.member; //폼 이름
	let pno = form.name.value;
	let pname = form.name.value;
	let price = form.name.value;
	let p_score = form.name.value;
	let sal_num = form.name.value;
	let pcontent = form.name.value;
	
	
	//정규 표현식
	//비밀번호
	let regexpno = /[0-9]+/; //숫자
	let regexprice = /[0-9]+/; //숫자
	let regexp_score = /[0-9]+/; //숫자
	let regexsal_num = /[0-9]+/; //숫자
	

	if(!regexpno.test(pno)) {
		alert("숫자만 입력 가능합니다.");
		pno.select();
		return false;
	}else if(!regexprice.test(price)){
		alert("숫자만 입력 가능합니다");
		price.select();
		return false;
	}else if(!regexp_score.test(p_score)){
		alert("숫자만 입력 가능합니다");
		price.select();
		return false;
	}else if(!regexsal_num.test(sal_num)){
		alert("숫자만 입력 가능합니다");
		price.select();
		return false;
	}else{
		form.submit(); //오류가 없으면 폼을 메인 컨트롤러로 전송
	}
}
	
