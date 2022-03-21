<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>TAEMOON Flower</title>
<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../../res/lib.css"%>
table.type1 {
    width: 100%;
    text-align: left;
}

table.type1 th {
  padding: 15px;
  font-weight: bold;
  vertical-align: top;
  width: 150px;
}

table.type2 {
    width: 100%;
    border-collapse: collapse;
    text-align: center;
  }

table.type2 th {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  
table.type2 tr {
	height: 50px;
}
</style>
<div class='container-fluid'>
	<br><br>
	<div class='row d-flex justify-content-center mt-5'>

		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 주문 상세</b></h5>
			<br>

			<table  class="type2">
				<thead>
					<tr><th>주문번호</th><th>상품</th><th>금액</th><th>상태</th></tr>
				</thead>
				<tbody class='border-bottom lightgray'>
				<c:forEach var="order" items="${orderList}">
					<tr>
						<td>${order.orderNum}</td>
						<td>빨간 장미다발<br>사이즈:S</td>
						<td>10000원</td>
						<td>${order.deliState}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 구매 정보</b></h5><br>
			<table class="type1">
				<c:forEach var="order" items="${orderList}">
				<tr>
					<th>수령인: </th><td>${order.recName}</td>
					<td><b>수령인연락처: </b>${order.recContactNum}</td>
				</tr>
				<tr>
					<th>희망 배송일: </th><td>${order.hopeDeliDate}</td>
				</tr>
				<tr>
					<th>배송지 : </th>
					<td>
						<div class='row'>
							<div class='col'>
								${order.recPostCode}
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								${order.recAddr}
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								${order.recDetailAddr}
							</div>
						</div>
					</td>
					<tr>
						<th>요청사항: </th><td>${order.request}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<hr>
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 총 금액</b></h5>
		</div>
	</div>
	<div class='row'>
		<div class='col'>
			<p><strong>금액 :</strong> 10000 원</p>
		</div>
	</div>
	<div class='row d-flex justify-content-center mt-1'>
		<button id='listBtn' class='btn btn-outline-secondary m-5 d-flex justify-content-center' onclick='history.go(-1)'>목록</button>
	</div>
</div>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 class='modal-title'>상품 미선택</h5>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='modalMsg'></p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal' id='noBtn'>아니오</button>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='okBtn'>확인</button>
			</div>
		</div>
	</div>
</div>
<%@ include file='../include/footer.jsp' %>