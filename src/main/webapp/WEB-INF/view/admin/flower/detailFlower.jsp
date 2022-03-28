<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../../../res/lib2.css"%>

#flowerImage{
	width: 300px;
	height:250px;
    margin: auto;
}

#searchbtn {
	margin: auto;
	display: block;
}

.bold {
	font-weight: bold;
}

#ProductTable {
	margin-left:auto; 
    margin-right:auto;
	width: 70%;
}

#ProductList { 
	top:0; 
	bottom:0; 
	left:0; 
	right:0; 
	margin:auto; 
	height:auto; 
	}
	
#detailImg {
   width: 900;
   height: 1000;
   border: 1px solid lightgrey;
   text-align: center;
   margin: auto;
}
</style>
<div class='container-fluid'>
	<%@ include file='../include/headerAdmin.jsp' %>
		</div>
<div class='col'>	
	<div class='row'>
		<div class='col-2 ml-3' id="adminBorder">
			<table class='table table-bordered mt-3 text-center'>
				<thead>
					<tr>
						<th><i class="fa fa-gift" style='color:#0f56ba; font-size:100px'></i></th>
					</tr>
					<tr style='background-color:#b1c3e0;'>
						<th>꽃 관리</th>
					</tr>
				</thead>
				<tbody id='noticeBorder' class='table-borderless'>
					<tr><td></td></tr>
					<tr>
						<td><a href='./listFlower' style='color:black; font-weight: bold'>꽃 조회</a></td>
					</tr>
					<tr>
						<td><a href='./addFlower' style='color:black'>꽃 등록</a></td>
					</tr>
					<tr><td></td></tr>
				</tbody>
			</table>
		</div>
		<div class='col mt-3'>
			<div class='row' id='flowerImage'>
				<div class='col'>
					<c:forEach var="flower" items="${flowerList}">
						<img style="max-width: 100%; height:250px;"src='<c:url value="/attach/${flower.flowerImgfileName}"/>'/><br>
					</c:forEach>
				</div>
			</div>
			<div class='col text-center mt-5'>
			<c:forEach var="flower" items="${flowerList}">
				<p>
					<label><b>꽃 이미지:&emsp;</b><input type="file" name="flowerImgfile" /></label></p>
				<p><b>꽃 번호:</b> ${flower.flowerNum}&emsp;&emsp;</p>
				<p><label><b>꽃 이름:&emsp;</b><input type='text' id='flowerName' name=' flowerName' value='${flower.flowerName}'/></label></p>
				<p><label><b>가격:&emsp;</b><input type='number' id='price' name='price' value='${flower.price}'/></label></p>
				<p><b>등록일:&emsp;</b>${flower.regDate}</p>
				<p>
					<label>
					<b>종류:&emsp;</b>${flower.kind}&emsp;
					<select id='kind' name='kind' class='text-center col-4'>
					<option>--</option>
					<option>꽃다발</option>
					<option>꽃바구니</option>
					</select>
					</label>	
				</p>
				<p><b>분류:</b> ${flower.flowerCategory}</p>
				<p></p>
			</c:forEach>
			</div>
		</div>
	</div><br><hr>
<div class='col'>
	<div class='row'>
		<div class='col-2'></div>
			<div class='col-10 text-center'>				
				<c:forEach var="flower" items="${flowerList}">
					<img style='max-width: 1000; height:1000' src='<c:url value="/attach/${flower.detailImgfileName}"/>'/><br>
				</c:forEach>
			</div>
		</div><br><br><hr>
		<div class='col'>
			<c:forEach var="flower" items="${flowerList}">
				<a href='/admin/flower/fixFlower?flowerNum=${flower.flowerNum}'><button class='btn btn-outline-secondary  float-right  mr-2' >수정</button></a>	
			</c:forEach>
		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp' %>