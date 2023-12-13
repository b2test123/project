<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="../resources/css/productinsert.css">
<script src="../resources/js/jquery-3.7.1.js"></script>
<script src="../resources/js/productinsert.js"></script>
</head>
<body>
	<jsp:include page="/header.jsp" />
	<div id="mid">
		<h3>상품 등록</h3>
		<form action="/joinform.do" method="post" name="member" id="mid_form">
			<fieldset id="join_info">
				<legend>상품 입력</legend>
				<div>
					<table>
					<tbody>
						<tr>
							<th>상품번호</th>
							<td><input type="text" name="pno"></td>
						</tr>
						<tr>
							<th>상품명</th>
							<td><input type="text" name="pname"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price"></td>
						</tr>
						<tr>
							<th>상품설명</th>
							<td><input type="text" name="pcontent"></td>
						</tr>
					</tbody>
					</table>
				</div>
			</fieldset>
			<div class="btnbox">
				<button type="submit" class="join_btn">확인</button>
				<button type="reset" class="reset_btn">취소</button>
			</div>
		</form>
	</div>
</body>
</html>