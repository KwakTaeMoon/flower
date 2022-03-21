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
	<c:if test="${empty sessionScope.userId}">
	<br><br><br><br>
	<div class='col'>
		<h5 style='color:#0f56ba'><b><!-- 제목을 넣어주세요 --></b></h5>
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
	
		<!-- 사용 권한이 있을때의 페이지를 넣어주세요. -->
	
	</c:if>
</div>
<%@ include file='../include/footer.jsp' %>