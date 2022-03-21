<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../../res/lib.css"%>

[id*='flower']{
   display: table;
   width: 150px;
   height: 150px;
   border: 1px solid lightgrey;
   text-align: center;
   margin: auto;
}

h5 {
	color: #0f56ba;
}

</style>
<div class='container'>
<%@ include file='../include/header.jsp' %>
	
	
<h5><strong>&nbsp;| 검색 결과</strong></h5><hr><br>
	<div class='row justify-content-center'>
		
		<div class='col-1'></div>
           <div class='col'>
			<div class='d-flex align-items-center'>
				<input class='form-control' type='search' placeholder='상품명'>
				&emsp;<a href='./01.html'><i class="fa fa-search" style='color:#3C5087'></i></a>&nbsp;
			</div>
		</div>
	</div><br><br>
	<div class='row'>
		<div class='col text-center'>
			<div id='flower1'><a href='./06.html' id='logoText' style='color:black'><span>꽃 이미지1</span></a></div>
			<p><a href='./06.html' style='color:black'>빨간 장미다발<br><small>10000원&nbsp;<span class='badge badge-primary'>BEST</span></small></a></p>		
		</div>
		<div class='col text-center'>
			<div id='flower1'><a href='./06.html' id='logoText' style='color:black'><span>꽃 이미지2</span></a></div>
			<p><a href='./06.html' style='color:black'>노란 장미 조화<br><small>10000원&nbsp;<span class='badge badge-primary'>NEW</span></small></a></p>		
		</div>
	</div>
	
	<!-- 두번쨰 줄부분 -->
	<div class='row mt-5'>
	      <div class='col-6 text-center'>
	         <div id='flower1'><a href='./06.html' id='logoText' style='color:black'><span>꽃 이미지3</span></a></div>
	         <p><a href='./06.html' style='color:black'>분홍 장미 비누꽃<br><small>10000원&nbsp;<span class='badge badge-primary'>NEW</span></small></a></p>      
	      </div>
	</div>
	 <br><br><br><br>
</div>


<%@ include file='../include/footer.jsp' %>