<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

function isVal(field) {
	let check = false;
	let fieldName;
	
	if(field.length)
		if(field.val()) check = true;
	return check;
}

function changeView(address){
	window.location.href=address;
}

function showResult() {
	$.ajax({
		type:'post',
		url: '<%=request.getContextPath() %>/flower/searchFlower'
	}).done(result => {
		let flowerList = [];
		if(result.length){
			$.each(result, (idx, flower) => {
				flowerList.push(
					`<tr>
					<th>
						<a href='<%=request.getContextPath() %>/flower/detailFlower?flowerNum=\${flower.flowerNum}'>
							<button value='\${flower.flowerNum}' class='btn btn-outline-dark' type='button'>
								<p>\${flower.flowerName}</p>
							</button>
						</a>
					</th>
					<td>\${flower.price}</td>
				</tr>`
				);
			});
			
			$('#flowerList').append(flowerList.join(''));
		} else {
			$('#flowerList').append('<tr><td colspan=3 class=text-center>검색결과가 없습니다.</td></tr>');
		}
	});
}

function init() {
	showResult();
}

$(init);
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %>
	<br><br><br><br>
	<h5 style='color:#0f56ba'><b>| 검색 결과</b></h5><hr><br>
	<div class='row'></div>
		<div class='form-group row justify-content-center'>
			<div class='col'>
				<table class='table table-bordered'>
					<thead class='thead-light'>
						<tr>
							<th>상품명</th>
							<th>판매가</th>
						</tr>
					</thead>
					<tbody id='flowerList'>
					</tbody>
				</table>
			</div>
		</div>
		<div class='row' style='height:500px'></div>
	</div>
	
	
	
	
</div>
<%@ include file='../include/footer.jsp' %>