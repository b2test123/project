<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../resources/css/cart.css">
<body>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../navbar.jsp" />
	<div id="mid">
		<h3>CART</h3>
		<div class="mid-top">
			<div class="member_order_info">
				<table>
					<tbody>
						<tr>
							<td rowspan="2" class="rowspan2">혜택 정보</td>
							<td class="first_td">최동현 님, 환영합니다</td>
						</tr>
						<tr class="second_tr">
							<td class="second_td"><a href="#">사용 가능 쿠폰 : 1개</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="prod_order_confirm_table">
				<div class="order_change_decrip">! 상품의 옵션 및 수량 변경은 상품상세 또는
					장바구니에서 가능합니다.</div>
				<table>
					<tbody>
						<tr>
							<td colspan="10">상품 주문내역</td>
						</tr>
						<tr class="table_td_head">
							<td><input type="checkbox"></td>
							<td>이미지</td>
							<td>상품정보</td>
							<td>판매가</td>
							<td>수량</td>
							<td>쿠폰여부</td>
							<td>배송구분</td>
							<td>배송비</td>
							<td>합계</td>
							<td>선택</td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td><a href="#"><img src="#" alt=""></a></td>
							<td>이츠독 플로라 가든 프레임 하우스 옐로우
								<p class="new_icon">NEW</p>
							</td>
							<td>119,000원</td>
							<td>
								<div class="num">
									<span class="count"> <a href="#" class="minus">-</a> <span
										id="result">1</span> <a href="#">+</a>
									</span>
								</div>
							</td>
							<td>No</td>
							<td>기본배송</td>
							<td>3,000원</td>
							<td>122,000원</td>
							<td>
								<p>
									<button>주문하기 ></button>
								</p>
								<p>
									<button>상품삭제 X</button>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="10"><span class="order_config_small_text">상품구매금액
									119,000원 + 배송비 3,000원 = 합계 : </span><span
								class="order_config_big_text">122,000</span> <span
								class="order_config_small_text">원</span></td>
						</tr>
					</tbody>
				</table>
				<div class="order_change_decrip">! 상품의 옵션 및 수량 변경은 상품상세 또는
					장바구니에서 가능합니다.</div>
				<div class="select_order_cancel">
					<span>선택한 상품 : </span>
					<button>X 삭제하기</button>
					<button class="delete_all_cart">장바구니비우기</button>
				</div>
			</div>
		</div>
		<div class="mid-btm">
			<div class="expected_order">
				<div class="expected_order_price">
					<span>결제예정 금액</span>
				</div>
				<table>
					<thead>
						<tr>
							<th>총 주문 금액<span>(배송비포함)</span></th>
							<th>총 할인 금액</th>
							<th>총 결제예정 금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span>122,000 </span> 원</td>
							<td>- <span>0 </span> 원
							</td>
							<td>= <span>122,000 </span> 원
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="order_method">
				<div class="info_desk_box">
					<div class="using_info">
						<table>
							<tbody>
								<tr>
									<th>이용안내</th>
								</tr>
								<tr>
									<td>
										<div>장바구니 이용안내</div>
										<div>무이자할부 이용안내</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>