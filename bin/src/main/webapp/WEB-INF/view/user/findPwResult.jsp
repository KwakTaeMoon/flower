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
	
	<h5 style='color:#0f56ba'><b>| 비밀번호 찾기</b></h5><hr><br>
		 <c:choose>
			<c:when test='${userPw == null}'>
				<div class='row justify-content-center'>
					<span>이름, 아이디  또는 연락처를 확인해 주세요.</span>
				</div><br>
				
				<div class='row justify-content-around'>
					<button type='button' class='btn btn-secondary' onclick='location.href="<%=request.getContextPath() %>/user/findPw"'
						style='width:120' id='findPwBtn'><small>비밀번호 찾기</small></button>						
				</div><br>
			</c:when>
			<c:when test='${userPw != null}'>
				<div class='row justify-content-center'>
					<span>비밀번호: ${userPw}</span>
				</div><br>
				
				<div class='row justify-content-around'>
					<button type='button' class='btn btn-secondary' onclick='location.href="<%=request.getContextPath() %>/user/login"'
						style='width:120' id='loginBtn'>로그인</button>						
				</div><br>
			</c:when>
		</c:choose>	
	<div class='row' style='height:200px'></div>
</div>
<%@ include file='../include/footer.jsp' %>