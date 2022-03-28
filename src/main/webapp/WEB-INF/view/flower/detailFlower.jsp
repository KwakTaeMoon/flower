<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>
function init() {
	$('#plusBtn').click(() => {
		amount = $('input[name="quantity"]').val();
		$('input[name="quantity"]').val(parseInt(amount) + 1);
	})
	
	$('#minusBtn').click(() => {
		amount = $('input[name="quantity"]').val();
		if(parseInt(amount) > 1) {
			$('input[name="quantity"]').val(parseInt(amount) - 1);
		} else {
			$('input[name="quantity"]').val(1);
		}	
	});
};

$(init);
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
#flowerImage{
	width: 300px;
	height:250px;
    margin: auto;
}

#detailImg {
   width: 100%;
   height: 1000;
   border: 1px solid lightgrey;
   text-align: center;
   margin: auto;
}
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %><br><br><br><br>
	<div class='row'> 
		<div class='col mt-3'>
			<div class='row' id='flowerImage'>
				<div class='col'>
					<c:forEach var="flower" items="${flowerList}">
						<img style="width: 100%; height:250px;"src='<c:url value="/attach/${flower.flowerImgfileName}"/>'/><br>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class='row'> 
		<div class='col text-center mt-5'>
			<c:forEach var="flower" items="${flowerList}">
				<h5><b>${flower.flowerName}</b></h5>
				<h6>${flower.price}</h6>	
			</c:forEach>	
			<div class='form-group row mt-3'>
			<div class='col-1'></div>
				<label for='quantity' class='col-3 col-form-label'><b>수량</b></label>
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
				<img style='max-width: 100%; height:1000' src='<c:url value="/attach/${flower.detailImgfileName}"/>'/><br>
			</c:forEach>	
		</div>
	</div><br><br>
	<div class='row'>
		<div class='col'>
		<h5><b>후 기</b></h5>
			<table class='table table-bordered'>
				<thead class='thead-light'>
					<tr>
						<th>NO</th><th>제목</th><th>아이디</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>1</th><td><a href='<%=request.getContextPath() %>/review/listReview'><span>예뻐요</span></a>
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