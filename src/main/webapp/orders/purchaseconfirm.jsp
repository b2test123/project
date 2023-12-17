<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 완료</title>
<link rel="stylesheet" href="../resources/css/purchaseconfirm.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id="container">
		<div id="mid">
			<div class="member_wrap">
				<div class="member_cont_join_ok">
					<div class="join_ok_box">
						<div class="join_ok_tit">
							<div class="check">
								<i class="fa-solid fa-check"></i>
							</div>
							<p class="complete">
								<b>주문결제 완료</b> 되었습니다.
							</p>
							<p>
								<span>멍뭉꼬냥</span>을 이용해 주셔서 감사합니다. <br> 주문내역은 주문/배송조회에서 확인
								하실 수 있습니다.
							</p>
						</div>
						<div class="btn_member_sec">
							<ul>
								<li><a href="/main.jsp"><button id="btnHome">홈으로</button></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>