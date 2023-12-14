<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강아지 상품</title>
<link rel="stylesheet" href="../resources/css/product.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id="mid">
		<div class="mid_container">
			<div class="dog_tap">
				<div class="menu_subject">
					<a href="/doglist.do">
						<h3>멍뭉</h3>
					</a>
					<div class="sub_taps">
						<a href="/doglist.do"><span>먹거리</span></a> | <a href="/doglist.do"><span>용품</span></a>
					</div>
				</div>
			</div>
			<div class="cat_tap">
				<div class="menu_subject">
					<a href="/catlist.do">
						<h3>꼬냥</h3>
					</a>
					<div class="sub_taps">
						<a href="/catlist.do"><span>먹거리</span></a> | <a href="/catlist.do"><span>용품</span></a>
					</div>
				</div>
			</div>
			<div class="hamster_tap">
				<div class="menu_subject">
					<a href="/hamlist.do">
						<h3>햄찌</h3>
					</a>
					<div class="sub_taps">
						<a href="/hamlist.do"><span>먹거리</span></a> | <a href="/hamlist.do"><span>용품</span></a>
					</div>
				</div>
			</div>
			<div class="event_tap">
				<div class="menu_subject">
					<a href="/eventlist.do">
						<h3>이벤트</h3>
					</a>
					<div class="sub_taps">
						<a href="/eventlist.do"><span>기간 할인</span></a> | <a href="/eventlist.do"><span>신상품</span></a>
						| <a href="/eventlist.do"><span>한정판</span></a>
					</div>
				</div>
			</div>
		</div>
		<c:forEach items="${productList}" var="product">
			<c:if test="${product.category eq '강아지'}">
				<td><a href="/productview.do?pno=${product.pno}">${product.pno}</a></td>
				<td>${product.pname}</td>
				<td>${product.price}</td>
				<td>${product.pcontent}</td>
				<td>${product.category}</td>
			</c:if>
		</c:forEach>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>