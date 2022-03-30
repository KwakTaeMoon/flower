<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>
<script>
</script>
<style>
table {
	width: auto;
	text-align: center;
}

#helpbottom{
   width: 200;
   height: 200px;
   border: 1px solid lightgrey;
   text-align: center;
}
 
 
table.type1 {
    width: 100%;
    border-collapse: collapse;
    text-align: center;
  }

  
table.type1 tr {
	height: 100px;
}

#image {
	width: 8rem;
	height: 8rem;
	border: 1px solid lightgrey;
}
h5 {
	color: #0f56ba;
}

<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %>
	<div class='container'>
	<%@ include file ="../include/header.jsp"%>
	<br><br><br><br>
	
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5><b>| 장바구니</b></h5><br>
			<table id='cartTable' class="type1">
				<thead>
					<tr>
						<th></th>
						<th>번호</th>
						<th>꽃이미지</th>
						<th>꽃이름 / 수량 / 가격</th>
					</tr>
				</thead>
				<tbody id='cartList' class='border-bottom lightgray'>
					<tr>
						<th><input type='checkbox' class='mr-3'></th>
						<td>1</td>
						
						<td id='image'>
							<a href='../flower/06.html'><i>꽃 이미지</i></a>
						</td>
						<td>하얀 장미다발<br>수량: 1<br>가격:20000원</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class='row d-flex justify-content-end mt-5 mx-2'>
		<button type='button' id='deleteBtn' class="btn btn-outline-secondary d-flex justify-content-center mr-2">삭제</button>
		<button type='submit' id='purchaseBtn' class="btn btn-outline-secondary d-flex justify-content-center">구매</button>
	</div>
	</div>
</div>

<div id='modal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<p class="modal-title float-left" id="myModalLabel">장바구니</p>
				<button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>					
			</div>
			<div class='modal-body' align='center'>
				<p id='modalMsg'></p>
				<button type='button' id='deleteOkBtn'  class='btn btn-outline-secondary'>예</button>&emsp;&emsp;         	
				 <button type='button' id='noBtn' data-dismiss='modal' class='btn btn-secondary'>아니오</button>         
			</div>
		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp' %>