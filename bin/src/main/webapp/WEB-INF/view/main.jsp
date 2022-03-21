<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>
<%@ include file ='./include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../res/lib.css"%>
table {
	width: auto;
	text-align: center;
}

[id*='flowerImg']{
   width: 200px;
   height: 200px;
   border: 1px solid lightgrey;
   text-align: center;
   margin: 0 auto;
}

[id*='Carousel']{
   width: 200px;
   height: 200px;
   margin: 0 auto;
}
</style>
<div class='container'>
	<%@ include file ='./include/header.jsp'%>
	<br><br><br><br>
	<!-- login and cart -->
	<c:if test="${empty sessionScope.userId}">
		<div class='col'>
			<div id='rightBar' style='text-align: right'>
				<a href='<%=request.getContextPath() %>/user/login'><i class='fa fa-user fa-lg' style='color:#3C5087'></i></a>
				<a href='#'>&emsp;<i class='fa fa-shopping-cart fa-lg' style='color:#3C5087'></i></a>
			</div>
		</div>
	</c:if>
	<!-- login and cart -->
	
	<!-- logout and cart -->
	<c:if test="${not empty sessionScope.userId}">
		<div class='col'>
			<div id='rightBar' style='text-align: right'>
				<a href='<%=request.getContextPath() %>/user/logout'><i class='fa fa-user-slash fa-lg' style='color:#3C5087'></i></a>
				<a href='#'>&emsp;<i class='fa fa-shopping-cart fa-lg' style='color:#3C5087'></i></a>
			</div>
		</div>
	</c:if>
	<!-- logout and cart -->
	
	<p><strong>&nbsp;BEST</strong></p>
	   <div class='row'>
			<div class='col'>
				<div id='bestCarousel' class='carousel slide' data-ride='carousel'>
					<div class='carousel-inner'>
						<table class = 'table table-borderless' id='bestProductImg'>
							<tbody>
							   	<tr>
							      <th>
							      	<div class='carousel-item active'>
							      		<div id='flowerImg1'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo1'><p>빨간 장미다발<br><small>10000원&nbsp;<span class='badge badge-primary'>BEST</span></small></p></div>
							      	</div>
							      	<div class='carousel-item'>
							      		<div id='flowerImg2'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo3'>하얀 장미 바구니<br><small>10000원&nbsp;<span class='badge badge-primary'>BEST</span></small></div>
							      	</div>
							      	<div class='carousel-item'>
							      		<div id='flowerImg3'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo3'><p>고목나무<br><small>10000원&nbsp;<span class='badge badge-primary'>BEST</span></small></div>
							      	</div>
							      </th>
							   </tr>
							</tbody>
						</table>
					</div>
					<a href='#bestCarousel' class='carousel-control-prev' data-slide='prev'>
						&nbsp;<i class='fa fa-chevron-left' style='color:#000000'></i>
					</a>
					<a href='#bestCarousel' class='carousel-control-next' data-slide='next'>
						&emsp;<i class='fa fa-chevron-right' style='color:#000000'></i>
					</a>
				</div>
			</div>
		</div><br><br><br><br>	
		
	<p><strong>&nbsp;NEW</strong></p>
	<div class='row'>
		<div class='col'>
				<div id='newCarousel' class='carousel slide' data-ride='carousel'>
					<div class='carousel-inner'>
						<table class = 'table table-borderless' id='bestProductImg'>
							<tbody>
							   	<tr>
							      <th>
							      	<div class='carousel-item active'>
							      		<div id='flowerImg4'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo1'><p>노랑 장미다발<br><small>10000원&nbsp;<span class='badge badge-primary'>NEW</span></small></div>
							      	</div>
							      	<div class='carousel-item'>
							      		<div id='flowerImg5'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo3'><p>분홍 장미 바구니<br><small>10000원&nbsp;<span class='badge badge-primary'>NEW</span></small></div>
							      	</div>
							      	<div class='carousel-item'>
							      		<div id='flowerImg6'><a href='#'>꽃 이미지</a></div>
							      		<div id='bestProductInfo3'><p>금전수<br><small>10000원&nbsp;<span class='badge badge-primary'>NEW</span></small></div>
							      	</div>
							      </th>
							   </tr>
							</tbody>
						</table>
					</div>
					<a href='#newCarousel' class='carousel-control-prev' data-slide='prev'>
						&nbsp;<i class='fa fa-chevron-left' style='color:#000000'></i>
					</a>
					<a href='#newCarousel' class='carousel-control-next' data-slide='next'>
						&emsp;<i class='fa fa-chevron-right' style='color:#000000'></i>
					</a>
				</div>
			</div>
		</div><br><br><br><br>
</div>

<%@ include file ='./include/footer.jsp'%>
