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
<%@ include file='../include/header.jsp' %>
	<div class='row'> 
		<div class='col'>
			<div class='row' id='flowerImage'>
				<div class='col'>
					<div class='row' style="height:100px"></div>
					<c:forEach var="flower" items="${flowerList}">
					<div class='row d-flex justify-content-center align-middle' ><p>${flower.flowerImgfileName}</p></div>
					</c:forEach>
					<div class='row' style='height:100px'></div>
				</div>
			</div>
		</div>
	</div>
	<div class='row'> 
		<div class='col text-center mt-5'>
		<c:forEach var="flower" items="${flowerList}">
			<h5>${flower.flowerName}${flower.flowerNum}${flower.kind}</h5>
			<h6>${flower.price}${flower.flowerCategory}${flower.regDate}</h6>
		</c:forEach>		
			<div class='form-group row mt-3'>
				<label for='quantity' class='col-3 col-form-label'>수량</label>
				<button type='button' class='btn btn-outline-secondary small' id='minusBtn'>-</button>
				<input type='text' class='col-3 text-center' name='quantity' value='1' readonly='readonly' id='quantity'/>
				<button type='button' class='btn btn-outline-secondary' id='plusBtn'>+</button>
			</div>
			<div class='form-group col mt-5'>
				<div class='col'>
					<div class='row d-flex justify-content-center'>
						<button type='button'class='btn btn-outline-secondary' id='cartBtn'
						data-toggle='modal' data-target='#cartModal'>장바구니</button>
						<div style='width:60px'></div>
						<a href ='../order/01.html' class='btn btn-outline-secondary'>구 매</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br><hr>
	<div class='row'>
		<div class='col text-center'>
		<c:forEach var="flower" items="${flowerList}">
			<div id='detailImg'><a href='#'><span style='color:black'>${flower.detailImgfileName}</span></a></div>
			</c:forEach>	
		</div>
	</div><br>
	<div class='row'>
		<div class='col'>
		<p class='bold'>후 기</p>
			<table class='table table-bordered'>
				<thead class='thead-light'>
					<tr>
						<th>NO</th><th>제목</th><th>아이디</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>1</th><td><a href='../review/02.html'><span>예뻐요</span></a>
										</td><td>ID1</td><td>22.03.01</td>
					</tr>
					<tr>
						<th>2</th><td><span>좋아요</span>
										</td><td>ID2</td><td>22.03.16</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file='../include/footer.jsp' %>