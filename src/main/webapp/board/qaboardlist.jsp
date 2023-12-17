<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
<link rel="stylesheet" href="../resources/css/boardlist.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id="container">
		<div id="mid">
			<h3>Q&A</h3>
			<div class="Board">
				<table id="board_tb">
					<thead>
						<tr>
							<th class="board_no">no</th>
							<th class="board_title">title</th>
							<th class="board_writer">writer</th>
							<th class="board_date">date</th>
							<th class="board_hit">hit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${qaboardList}" var="qab">
							<tr>
								<td class="board_no">${qab.qno}</td>
								<td class="board_title"><a href="/qaboardview.do?qno=${qab.qno}">${qab.qtitle}</a></td>
								<td class="board_writer">${qab.id}</td>
								<td class="board_date"><fmt:formatDate value="${qab.qdate}"
									 pattern="yyyy-MM-dd HH:mm:ss"/>	</td>
								<%-- <td class="board_hit">${nb.hit}</td> --%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="write">
				<a href="/qawriteform.do">
					<button type="button">글쓰기</button>
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>