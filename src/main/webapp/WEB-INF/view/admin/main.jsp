<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
	<c:if test="${empty sessionScope.userId}">
	<br><br><br><br>
	<div class='col'>
		<h5 style='color:#0f56ba'><b>관리자</b></h5>
	</div>
	<hr><br><br>
			<div class='text-center'>
				<h5 style='text-align:center'><b>권한이 없습니다.</b></h5>
			</div>
			<div class='row d-flex justify-content-center'>
				<button type="button" class="btn btn-outline-secondary m-5 d-flex justify-content-center"
					onclick="location.href='<%=request.getContextPath() %>/user/login'">로그인으로</button>
			</div>
	</c:if>
	<c:if test="${not empty sessionScope.userId}">
	<%@ include file='include/headerAdmin.jsp' %>
	
	<div class='row mt-5 justify-content-center' >
		<div class='col-11' id="adminOrder">
			<h5 style='color:#0f56ba'><b>| 주문 현황</b></h5>
			<table class='table table-bordered mt-3 text-center'>
				<thead class='thead' style='background-color:#b1c3e0'>
					<tr>
						<th>결제 완료</th>
						<th>상품 준비중</th>
						<th>배송중</th>
						<th>배송완료</th>
					</tr>
				</thead>
				<tbody id='OrderStatus' class='table-bordered'>
					<tr>
						<td>10</td>
						<td>5</td>
						<td>3</td>
						<td>8</td>
					</tr>
				</tbody>
			</table>
		</div>
		
	</div>
	<div class='row justify-content-center' style='height:400px'>
		<div class='col-11 mt-5' id="adminBorder">
			<h5 style='color:#0f56ba'><b>| 게시판 현황</b></h5>
			<table class='table table-bordered mt-3 text-center'>
				<thead style='background-color:#b1c3e0'>
					<tr>
						<th>상품 후기</th>
						<th>공지사항</th>
						<th>1:1문의</th>
					</tr>
				</thead>
				<tbody id='borderStatus' class='table-bordered'>
					<tr>
						<td>50</td>
						<td>23</td>
						<td>8</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</c:if>
</div>
<%@ include file='../include/footer.jsp' %>